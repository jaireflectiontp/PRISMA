-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "team" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "bats" TEXT NOT NULL,
    "bowls" TEXT NOT NULL,
    "format" TEXT NOT NULL,
    "matches" INTEGER NOT NULL,
    "innings" INTEGER NOT NULL,
    "runs" INTEGER NOT NULL,
    "high_score" INTEGER NOT NULL,
    "avg" DOUBLE PRECISION NOT NULL,
    "fifty" INTEGER NOT NULL,
    "century" INTEGER NOT NULL,
    "strike_rate" DOUBLE PRECISION NOT NULL,
    "overs" DOUBLE PRECISION NOT NULL,
    "wkts" INTEGER NOT NULL,
    "economy" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "team_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "team_name_key" ON "team"("name");
