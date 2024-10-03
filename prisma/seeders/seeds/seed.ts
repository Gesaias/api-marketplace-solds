import { PrismaClient } from '@prisma/client';
import seedUser from './user.seed';

const prisma = new PrismaClient();

async function main() {
  console.log('');
  await seedUser(prisma);
}

main()
  .then(() => console.log('Seeding completed successfully.'))
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
