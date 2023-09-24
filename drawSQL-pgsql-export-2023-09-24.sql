CREATE TABLE "address"(
    "id" BIGINT NOT NULL,
    "account_id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "telefon" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "address" ADD PRIMARY KEY("id");
CREATE TABLE "account"(
    "id" BIGINT NOT NULL,
    "username" VARCHAR(255) NOT NULL,
    "password" CHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "account" ADD PRIMARY KEY("id");
ALTER TABLE
    "address" ADD CONSTRAINT "address_account_id_foreign" FOREIGN KEY("account_id") REFERENCES "account"("id");