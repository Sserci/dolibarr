-- ============================================================================
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.
--
-- ============================================================================


ALTER TABLE llx_facture_fourn_rec ADD UNIQUE INDEX uk_facture_fourn_rec_ref (titre, entity);
ALTER TABLE llx_facture_fourn_rec ADD UNIQUE INDEX uk_facture_fourn_rec_ref_supplier (ref_supplier, fk_soc, entity);

ALTER TABLE llx_facture_fourn_rec ADD INDEX idx_facture_fourn_rec_date_lim_reglement (date_lim_reglement);
ALTER TABLE llx_facture_fourn_rec ADD INDEX idx_facture_fourn_rec_fk_soc (fk_soc);
ALTER TABLE llx_facture_fourn_rec ADD INDEX idx_facture_fourn_rec_fk_user_author (fk_user_author);
ALTER TABLE llx_facture_fourn_rec ADD INDEX idx_facture_fourn_rec_fk_projet (fk_projet);

ALTER TABLE llx_facture_fourn_rec ADD CONSTRAINT fk_facture_fourn_rec_fk_soc            FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_facture_fourn_rec ADD CONSTRAINT fk_facture_fourn_rec_fk_user_author    FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_facture_fourn_rec ADD CONSTRAINT fk_facture_fourn_rec_fk_projet         FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);