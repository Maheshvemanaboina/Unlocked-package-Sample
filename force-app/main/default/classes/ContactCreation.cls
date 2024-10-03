public class ContactCreation {

    public static void createContacts(Integer numberOfContacts) {
        List<Contact> contactsToInsert = new List<Contact>();

        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact Con = new Contact();
            Con.FirstName = 'SFDC' + i;
            Con.LastName = 'CFS' + i;

            contactsToInsert.add(Con);
        }

    }
}