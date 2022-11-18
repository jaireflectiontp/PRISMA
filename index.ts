import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    const squad =
        await prisma.team.create({
            data: {
                name: 'Virat Kohli',
                bats: 'right handed',
                bowls: 'right arm medium',
                format: 'IPL',
                matches: 223,
                innings: 215,
                runs: 6624,
                high_score: 113,
                avg: 36.20,
                fifty: 44,
                century: 5,
                strike_rate: 129.15,
                overs: 41.5,
                wkts: 4,
                economy: 8.80
            }
        })
    console.log(squad)
}

main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })