INSERT INTO permissions (id, name) VALUES (1, 'MANAGE_CATEGORIES');
INSERT INTO permissions (id, name) VALUES (2, 'MANAGE_PRODUCTS');
INSERT INTO permissions (id, name) VALUES (3, 'MANAGE_ORDERS');
INSERT INTO permissions (id, name) VALUES (4, 'MANAGE_CUSTOMERS');
INSERT INTO permissions (id, name) VALUES (5, 'MANAGE_PAYMENT_SYSTEMS');
INSERT INTO permissions (id, name) VALUES (6, 'MANAGE_USERS');
INSERT INTO permissions (id, name) VALUES (7, 'MANAGE_ROLES');
INSERT INTO permissions (id, name) VALUES (8, 'MANAGE_PERMISSIONS');
INSERT INTO permissions (id, name) VALUES (9, 'MANAGE_SETTINGS');

INSERT INTO roles (id, name) VALUES (1, 'ROLE_SUPER_ADMIN');
INSERT INTO roles (id, name) VALUES (2, 'ROLE_ADMIN');
INSERT INTO roles (id, name) VALUES (3, 'ROLE_CMS_ADMIN');
INSERT INTO roles (id, name) VALUES (4, 'ROLE_USER');

insert into role_permission(role_id, perm_id) values(1,1);
insert into role_permission(role_id, perm_id) values(1,2);
insert into role_permission(role_id, perm_id) values(1,3);
insert into role_permission(role_id, perm_id) values(1,4);
insert into role_permission(role_id, perm_id) values(1,5);
insert into role_permission(role_id, perm_id) values(1,6);
insert into role_permission(role_id, perm_id) values(1,7);
insert into role_permission(role_id, perm_id) values(1,8);
insert into role_permission(role_id, perm_id) values(1,9);
insert into role_permission(role_id, perm_id) values(2,1);
insert into role_permission(role_id, perm_id) values(2,2);
insert into role_permission(role_id, perm_id) values(2,3);
insert into role_permission(role_id, perm_id) values(2,4);
insert into role_permission(role_id, perm_id) values(2,5);
insert into role_permission(role_id, perm_id) values(2,9);
insert into role_permission(role_id, perm_id) values(3,1);
insert into role_permission(role_id, perm_id) values(3,2);