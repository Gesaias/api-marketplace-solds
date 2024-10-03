import { PrismaClient } from '@prisma/client';
import { userData } from '../data/user.data';

const seedUser = async (prisma: PrismaClient) => {
  try {
    await prisma.user.deleteMany();
    console.log('Deleted records in USER table');

    await prisma.$queryRaw`ALTER SEQUENCE user_id_seq RESTART WITH 1`;
    console.log('reset USER auto increment to 1');
    const data = await userData();

    for (const user of data) {
      // await prisma.user.create({
      //   data: {
      //     name: user.name,
      //     email: user.email,
      //   },
      // });
    }

    console.log('Added USER data \n');
  } catch (e) {
    throw e;
  }
};

export default seedUser;
