CREATE DATABASE veterinary;


CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);
CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices(
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount NUMERIC(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATE,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Marianne', 'Lopez', 'Bugtong na Pulo', '09637958369', 'marilopez23@gmail.com'),
(2, 'Kristoffer', 'Delos Santos', 'Quezon', '09917528407', 'krisdsantos11@gmail.com'),
(3, 'Leah', 'Mendoza', 'Pagbilao', '09637958876', 'leahmendoza04@gmail.com'),
(4, 'Janelle', 'Garcia', 'Sico', '09123458369', 'janellegarcia18@gmail.com'),
(5, 'Beverly', 'Castro', 'San Jose', '09123456789', 'bevcastro92@gmail.com'),
(6, 'Raymond', 'Torres', 'Lipa City', '09987654321', 'raytorres55@gmail.com'),
(7, 'Clarisse', 'Reyes', 'Pinagkawitan', '09453672821', 'clarisserey07@gmail.com'),
(8, 'Richel', 'Vergara', 'Tambo', '09453672987', 'richelvergara33@gmail.com'),
(9, 'Aira', 'Marquez', 'Sampaguita', '09123472821', 'airamarquez02@gmail.com'),
(10, 'Felise', 'Hidalgo', 'Antipolo', '09453676785', 'felisehidalgo10@gmail.com');

INSERT INTO animals (animal_id, name, species, breed, age, owner_id)
VALUES
(1, 'Munying', 'Cat', 'Persian', 3, 1),
(2, 'Tambol', 'Dog', 'Aspen', 5, 2),
(3, 'Bagwis', 'Dog', 'Siberian Husky', 2, 3),
(4, 'Mutya', 'Cat', 'Siamese', 4, 4),
(5, 'Lawin', 'Bird', 'Parakeet', 1, 5),
(6, 'Bantay', 'Dog', 'German Shepherd', 6, 2),
(7, 'Kutong', 'Rabbit', 'Holland Lop', 2, 6),
(8, 'Puti', 'Dog', 'Shih Tzu', 3, 1),
(9, 'Munting', 'Cat', 'British Shorthair', 4, 7),
(10, 'Dagul', 'Dog', 'Bulldog', 5, 3);

INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2025-02-01', 'Skin allergy treatment'),
(2, 3, '2025-02-03', 'General health assessment'),
(3, 2, '2025-02-05', 'Deworming'),
(4, 5, '2025-02-06', 'Vaccination'),
(5, 4, '2025-02-08', 'Dental cleaning'),
(6, 7, '2025-02-10', 'Follow-up check-up'),
(7, 9, '2025-02-12', 'Grooming'),
(8, 8, '2025-02-15', 'Eye irritation check'),
(9, 6, '2025-02-18', 'Weight loss evaluation'),
(10, 10, '2025-02-20', 'Regular check-up');

INSERT INTO doctors (doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '09876543210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '09551234567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '09112223333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '09998887777', 'sofia@example.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '09135557777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Ophthalmology Specialist', '09332221111', 'carmen@example.com'),
(7, 'Dr.Rafael', 'Mendoza', 'Exotic Animals Specialist', '09082223344', 'rafael@example.com'),
(8, 'Dr.Julia', 'Navarro', 'Diagnostic Specialist', '09175556677', 'julia@example.com'),
(9, 'Dr.Marco', 'Villanueva', 'Rehabilitation Specialist', '09208881234', 'marco@example.com'),
(10, 'Dr.Elena', 'Cabrera', 'Emergency Care Specialist', '09453337788', 'elena@example.com');