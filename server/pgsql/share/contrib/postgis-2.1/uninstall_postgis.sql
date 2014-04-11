-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- 
-- PostGIS - Spatial Types for PostgreSQL 
-- http://postgis.refractions.net 
-- 
-- This is free software; you can redistribute and/or modify it under 
-- the terms of the GNU General Public Licence. See the COPYING file. 
-- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- 
-- Generated on: Sat Feb 09 01:23:34 2013
--           by: ../utils/create_undef.pl
--         from: postgis.sql
-- 
-- Do not edit manually, your changes will be lost.
-- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

BEGIN;

-- Drop all views.
DROP VIEW IF EXISTS geography_columns;
DROP VIEW IF EXISTS geometry_columns;
-- Drop all tables.
DROP TABLE spatial_ref_sys;
-- Drop all aggregates.
DROP AGGREGATE IF EXISTS ST_Extent (geometry);
DROP AGGREGATE IF EXISTS ST_3DExtent (geometry);
DROP AGGREGATE IF EXISTS ST_MemCollect (geometry);
DROP AGGREGATE IF EXISTS ST_MemUnion (geometry);
DROP AGGREGATE IF EXISTS ST_Accum (geometry);
DROP AGGREGATE IF EXISTS ST_Union (geometry);
DROP AGGREGATE IF EXISTS ST_Collect (geometry);
DROP AGGREGATE IF EXISTS ST_Polygonize (geometry);
DROP AGGREGATE IF EXISTS ST_MakeLine (geometry);
-- Drop all operators classes and families.
DROP OPERATOR CLASS btree_geometry_ops USING btree;
DROP OPERATOR FAMILY btree_geometry_ops USING btree;
DROP OPERATOR CLASS gist_geometry_ops_2d USING GIST;
DROP OPERATOR FAMILY gist_geometry_ops_2d USING GIST;
DROP OPERATOR CLASS gist_geometry_ops_nd USING GIST;
DROP OPERATOR FAMILY gist_geometry_ops_nd USING GIST;
DROP OPERATOR CLASS gist_geography_ops USING GIST;
DROP OPERATOR FAMILY gist_geography_ops USING GIST;
DROP OPERATOR CLASS btree_geography_ops USING btree;
DROP OPERATOR FAMILY btree_geography_ops USING btree;
-- Drop all operators.
DROP OPERATOR <  (geometry,geometry) CASCADE;
DROP OPERATOR <=  (geometry,geometry) CASCADE;
DROP OPERATOR =  (geometry,geometry) CASCADE;
DROP OPERATOR >=  (geometry,geometry) CASCADE;
DROP OPERATOR >  (geometry,geometry) CASCADE;
DROP OPERATOR &&  (geometry,geometry) CASCADE;
DROP OPERATOR ~=  (geometry,geometry) CASCADE;
DROP OPERATOR <->  (geometry,geometry) CASCADE;
DROP OPERATOR <#>  (geometry,geometry) CASCADE;
DROP OPERATOR @  (geometry,geometry) CASCADE;
DROP OPERATOR ~  (geometry,geometry) CASCADE;
DROP OPERATOR <<  (geometry,geometry) CASCADE;
DROP OPERATOR &<  (geometry,geometry) CASCADE;
DROP OPERATOR <<|  (geometry,geometry) CASCADE;
DROP OPERATOR &<|  (geometry,geometry) CASCADE;
DROP OPERATOR &>  (geometry,geometry) CASCADE;
DROP OPERATOR >>  (geometry,geometry) CASCADE;
DROP OPERATOR |&>  (geometry,geometry) CASCADE;
DROP OPERATOR |>>  (geometry,geometry) CASCADE;
DROP OPERATOR &&&  (geometry,geometry) CASCADE;
DROP OPERATOR &&  (geography,geography) CASCADE;
DROP OPERATOR <  (geography,geography) CASCADE;
DROP OPERATOR <=  (geography,geography) CASCADE;
DROP OPERATOR =  (geography,geography) CASCADE;
DROP OPERATOR >=  (geography,geography) CASCADE;
DROP OPERATOR >  (geography,geography) CASCADE;
-- Drop all casts.
DROP CAST (geometry AS geometry);
DROP CAST (geometry AS point);
DROP CAST (point AS geometry);
DROP CAST (geometry AS path);
DROP CAST (path AS geometry);
DROP CAST (geometry AS polygon);
DROP CAST (polygon AS geometry);
DROP CAST (geometry AS box2d);
DROP CAST (geometry AS box3d);
DROP CAST (geometry AS box);
DROP CAST (box3d AS box2d);
DROP CAST (box2d AS box3d);
DROP CAST (box2d AS geometry);
DROP CAST (box3d AS box);
DROP CAST (box3d AS geometry);
DROP CAST (text AS geometry);
DROP CAST (geometry AS text);
DROP CAST (bytea AS geometry);
DROP CAST (geometry AS bytea);
DROP CAST (geography AS geography);
DROP CAST (bytea AS geography);
DROP CAST (geography AS bytea);
DROP CAST (geometry AS geography);
DROP CAST (geography AS geometry);
-- Drop all functions except 26 needed for type definition.
DROP FUNCTION IF EXISTS geometry (geometry, integer, boolean);
DROP FUNCTION IF EXISTS geometry (point);
DROP FUNCTION IF EXISTS point (geometry);
DROP FUNCTION IF EXISTS geometry (path);
DROP FUNCTION IF EXISTS path (geometry);
DROP FUNCTION IF EXISTS geometry (polygon);
DROP FUNCTION IF EXISTS polygon (geometry);
DROP FUNCTION IF EXISTS ST_X (geometry);
DROP FUNCTION IF EXISTS ST_Y (geometry);
DROP FUNCTION IF EXISTS ST_Z (geometry);
DROP FUNCTION IF EXISTS ST_M (geometry);
DROP FUNCTION IF EXISTS geometry_lt (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_le (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_gt (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_ge (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_eq (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_cmp (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_gist_distance_2d (internal,geometry,int4);
DROP FUNCTION IF EXISTS geometry_gist_consistent_2d (internal,geometry,int4);
DROP FUNCTION IF EXISTS geometry_gist_compress_2d (internal);
DROP FUNCTION IF EXISTS geometry_gist_penalty_2d (internal,internal,internal);
DROP FUNCTION IF EXISTS geometry_gist_picksplit_2d (internal, internal);
DROP FUNCTION IF EXISTS geometry_gist_union_2d (bytea, internal);
DROP FUNCTION IF EXISTS geometry_gist_same_2d (geom1 geometry, geom2 geometry, internal);
DROP FUNCTION IF EXISTS geometry_gist_decompress_2d (internal);
DROP FUNCTION IF EXISTS geometry_gist_sel_2d  (internal, oid, internal, int4);
DROP FUNCTION IF EXISTS geometry_gist_joinsel_2d (internal, oid, internal, smallint);
DROP FUNCTION IF EXISTS _postgis_selectivity (tbl regclass, att_name text, geom geometry, mode text );
DROP FUNCTION IF EXISTS _postgis_join_selectivity (regclass, text, regclass, text, text );
DROP FUNCTION IF EXISTS _postgis_stats (tbl regclass, att_name text, text );
DROP FUNCTION IF EXISTS gserialized_gist_sel_2d  (internal, oid, internal, int4);
DROP FUNCTION IF EXISTS gserialized_gist_sel_nd  (internal, oid, internal, int4);
DROP FUNCTION IF EXISTS gserialized_gist_joinsel_2d  (internal, oid, internal, smallint);
DROP FUNCTION IF EXISTS gserialized_gist_joinsel_nd  (internal, oid, internal, smallint);
DROP FUNCTION IF EXISTS geometry_overlaps (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_same (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_distance_centroid (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_distance_box (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_contains (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_within (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_left (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_overleft (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_below (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_overbelow (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_overright (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_right (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_overabove (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_above (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS geometry_gist_consistent_nd (internal,geometry,int4);
DROP FUNCTION IF EXISTS geometry_gist_compress_nd (internal);
DROP FUNCTION IF EXISTS geometry_gist_penalty_nd (internal,internal,internal);
DROP FUNCTION IF EXISTS geometry_gist_picksplit_nd (internal, internal);
DROP FUNCTION IF EXISTS geometry_gist_union_nd (bytea, internal);
DROP FUNCTION IF EXISTS geometry_gist_same_nd (geometry, geometry, internal);
DROP FUNCTION IF EXISTS geometry_gist_decompress_nd (internal);
DROP FUNCTION IF EXISTS geometry_overlaps_nd (geometry, geometry);
DROP FUNCTION IF EXISTS ST_Affine (geometry,float8,float8,float8,float8,float8,float8,float8,float8,float8,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Affine (geometry,float8,float8,float8,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Rotate (geometry,float8);
DROP FUNCTION IF EXISTS ST_Rotate (geometry,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Rotate (geometry,float8,geometry);
DROP FUNCTION IF EXISTS ST_RotateZ (geometry,float8);
DROP FUNCTION IF EXISTS ST_RotateX (geometry,float8);
DROP FUNCTION IF EXISTS ST_RotateY (geometry,float8);
DROP FUNCTION IF EXISTS ST_Translate (geometry,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Translate (geometry,float8,float8);
DROP FUNCTION IF EXISTS ST_Scale (geometry,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Scale (geometry,float8,float8);
DROP FUNCTION IF EXISTS ST_Transscale (geometry,float8,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_Shift_Longitude (geometry);
DROP FUNCTION IF EXISTS ST_XMin (box3d);
DROP FUNCTION IF EXISTS ST_YMin (box3d);
DROP FUNCTION IF EXISTS ST_ZMin (box3d);
DROP FUNCTION IF EXISTS ST_XMax (box3d);
DROP FUNCTION IF EXISTS ST_YMax (box3d);
DROP FUNCTION IF EXISTS ST_ZMax (box3d);
DROP FUNCTION IF EXISTS ST_expand (box2d,float8);
DROP FUNCTION IF EXISTS postgis_getbbox (geometry);
DROP FUNCTION IF EXISTS ST_MakeBox2d (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Combine_BBox (box2d,geometry);
DROP FUNCTION IF EXISTS ST_estimated_extent (text,text,text);
DROP FUNCTION IF EXISTS ST_EstimatedExtent (text,text,text);
DROP FUNCTION IF EXISTS ST_estimated_extent (text,text);
DROP FUNCTION IF EXISTS ST_EstimatedExtent (text,text);
DROP FUNCTION IF EXISTS ST_find_extent (text,text,text);
DROP FUNCTION IF EXISTS ST_find_extent (text,text);
DROP FUNCTION IF EXISTS postgis_addbbox (geometry);
DROP FUNCTION IF EXISTS postgis_dropbbox (geometry);
DROP FUNCTION IF EXISTS postgis_hasbbox (geometry);
DROP FUNCTION IF EXISTS ST_mem_size (geometry);
DROP FUNCTION IF EXISTS ST_summary (geometry);
DROP FUNCTION IF EXISTS ST_Npoints (geometry);
DROP FUNCTION IF EXISTS ST_nrings (geometry);
DROP FUNCTION IF EXISTS ST_3DLength (geometry);
DROP FUNCTION IF EXISTS ST_Length2d (geometry);
DROP FUNCTION IF EXISTS ST_Length (geometry);
DROP FUNCTION IF EXISTS ST_3DLength_spheroid (geometry, spheroid);
DROP FUNCTION IF EXISTS ST_length_spheroid (geometry, spheroid);
DROP FUNCTION IF EXISTS ST_length2d_spheroid (geometry, spheroid);
DROP FUNCTION IF EXISTS ST_3DPerimeter (geometry);
DROP FUNCTION IF EXISTS ST_perimeter2d (geometry);
DROP FUNCTION IF EXISTS ST_Perimeter (geometry);
DROP FUNCTION IF EXISTS ST_area2d (geometry);
DROP FUNCTION IF EXISTS ST_Area (geometry);
DROP FUNCTION IF EXISTS ST_distance_spheroid (geom1 geometry, geom2 geometry,spheroid);
DROP FUNCTION IF EXISTS ST_Distance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_point_inside_circle (geometry,float8,float8,float8);
DROP FUNCTION IF EXISTS ST_azimuth (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_force_2d (geometry);
DROP FUNCTION IF EXISTS ST_force_3dz (geometry);
DROP FUNCTION IF EXISTS ST_force_3d (geometry);
DROP FUNCTION IF EXISTS ST_force_3dm (geometry);
DROP FUNCTION IF EXISTS ST_force_4d (geometry);
DROP FUNCTION IF EXISTS ST_force_collection (geometry);
DROP FUNCTION IF EXISTS ST_CollectionExtract (geometry, integer);
DROP FUNCTION IF EXISTS ST_CollectionHomogenize (geometry);
DROP FUNCTION IF EXISTS ST_Multi (geometry);
DROP FUNCTION IF EXISTS ST_Expand (box3d,float8);
DROP FUNCTION IF EXISTS ST_Expand (geometry,float8);
DROP FUNCTION IF EXISTS ST_Envelope (geometry);
DROP FUNCTION IF EXISTS ST_Reverse (geometry);
DROP FUNCTION IF EXISTS ST_ForceRHR (geometry);
DROP FUNCTION IF EXISTS postgis_noop (geometry);
DROP FUNCTION IF EXISTS ST_zmflag (geometry);
DROP FUNCTION IF EXISTS ST_NDims (geometry);
DROP FUNCTION IF EXISTS ST_AsEWKT (geometry);
DROP FUNCTION IF EXISTS ST_AsEWKB (geometry);
DROP FUNCTION IF EXISTS ST_AsHEXEWKB (geometry);
DROP FUNCTION IF EXISTS ST_AsHEXEWKB (geometry, text);
DROP FUNCTION IF EXISTS ST_AsEWKB (geometry,text);
DROP FUNCTION IF EXISTS ST_AsLatLonText (geometry, text);
DROP FUNCTION IF EXISTS ST_AsLatLonText (geometry);
DROP FUNCTION IF EXISTS GeomFromEWKB (bytea);
DROP FUNCTION IF EXISTS ST_GeomFromEWKB (bytea);
DROP FUNCTION IF EXISTS GeomFromEWKT (text);
DROP FUNCTION IF EXISTS ST_GeomFromEWKT (text);
DROP FUNCTION IF EXISTS postgis_cache_bbox ();
DROP FUNCTION IF EXISTS ST_MakePoint (float8, float8);
DROP FUNCTION IF EXISTS ST_MakePoint (float8, float8, float8);
DROP FUNCTION IF EXISTS ST_MakePoint (float8, float8, float8, float8);
DROP FUNCTION IF EXISTS ST_MakePointM (float8, float8, float8);
DROP FUNCTION IF EXISTS ST_3DMakeBox (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_MakeLine  (geometry[]);
DROP FUNCTION IF EXISTS ST_LineFromMultiPoint (geometry);
DROP FUNCTION IF EXISTS ST_MakeLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_AddPoint (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_AddPoint (geom1 geometry, geom2 geometry, integer);
DROP FUNCTION IF EXISTS ST_RemovePoint (geometry, integer);
DROP FUNCTION IF EXISTS ST_SetPoint (geometry, integer, geometry);
DROP FUNCTION IF EXISTS ST_MakeEnvelope (float8, float8, float8, float8, integer );
DROP FUNCTION IF EXISTS ST_MakePolygon (geometry, geometry[]);
DROP FUNCTION IF EXISTS ST_MakePolygon (geometry);
DROP FUNCTION IF EXISTS ST_BuildArea (geometry);
DROP FUNCTION IF EXISTS ST_Polygonize  (geometry[]);
DROP FUNCTION IF EXISTS ST_LineMerge (geometry);
DROP FUNCTION IF EXISTS ST_Dump (geometry);
DROP FUNCTION IF EXISTS ST_DumpRings (geometry);
DROP FUNCTION IF EXISTS _ST_DumpPoints (the_geom geometry, cur_path integer[]);
DROP FUNCTION IF EXISTS ST_DumpPoints (geometry);
DROP FUNCTION IF EXISTS populate_geometry_columns (use_typmod boolean );
DROP FUNCTION IF EXISTS populate_geometry_columns (tbl_oid oid, use_typmod boolean );
DROP FUNCTION IF EXISTS AddGeometryColumn (catalog_name varchar,schema_name varchar,table_name varchar,column_name varchar,new_srid_in integer,new_type varchar,new_dim integer, use_typmod boolean );
DROP FUNCTION IF EXISTS AddGeometryColumn (schema_name varchar,table_name varchar,column_name varchar,new_srid integer,new_type varchar,new_dim integer, use_typmod boolean );
DROP FUNCTION IF EXISTS AddGeometryColumn (table_name varchar,column_name varchar,new_srid integer,new_type varchar,new_dim integer, use_typmod boolean );
DROP FUNCTION IF EXISTS DropGeometryColumn (catalog_name varchar, schema_name varchar,table_name varchar,column_name varchar);
DROP FUNCTION IF EXISTS DropGeometryColumn (schema_name varchar, table_name varchar,column_name varchar);
DROP FUNCTION IF EXISTS DropGeometryColumn (table_name varchar, column_name varchar);
DROP FUNCTION IF EXISTS DropGeometryTable (catalog_name varchar, schema_name varchar, table_name varchar);
DROP FUNCTION IF EXISTS DropGeometryTable (schema_name varchar, table_name varchar);
DROP FUNCTION IF EXISTS DropGeometryTable (table_name varchar);
DROP FUNCTION IF EXISTS UpdateGeometrySRID (catalogn_name varchar,schema_name varchar,table_name varchar,column_name varchar,new_srid_in integer);
DROP FUNCTION IF EXISTS UpdateGeometrySRID (varchar,varchar,varchar,integer);
DROP FUNCTION IF EXISTS UpdateGeometrySRID (varchar,varchar,integer);
DROP FUNCTION IF EXISTS find_srid (varchar,varchar,varchar);
DROP FUNCTION IF EXISTS get_proj4_from_srid (integer);
DROP FUNCTION IF EXISTS postgis_transform_geometry (geometry,text,text,int);
DROP FUNCTION IF EXISTS ST_Transform (geometry,integer);
DROP FUNCTION IF EXISTS postgis_version ();
DROP FUNCTION IF EXISTS postgis_proj_version ();
DROP FUNCTION IF EXISTS postgis_scripts_installed ();
DROP FUNCTION IF EXISTS postgis_lib_version ();
DROP FUNCTION IF EXISTS postgis_scripts_released ();
DROP FUNCTION IF EXISTS postgis_geos_version ();
DROP FUNCTION IF EXISTS postgis_svn_version ();
DROP FUNCTION IF EXISTS postgis_libxml_version ();
DROP FUNCTION IF EXISTS postgis_scripts_build_date ();
DROP FUNCTION IF EXISTS postgis_lib_build_date ();
DROP FUNCTION IF EXISTS postgis_full_version ();
DROP FUNCTION IF EXISTS box2d (geometry);
DROP FUNCTION IF EXISTS box3d (geometry);
DROP FUNCTION IF EXISTS box (geometry);
DROP FUNCTION IF EXISTS box2d (box3d);
DROP FUNCTION IF EXISTS box3d (box2d);
DROP FUNCTION IF EXISTS box (box3d);
DROP FUNCTION IF EXISTS text (geometry);
DROP FUNCTION IF EXISTS box3dtobox (box3d);
DROP FUNCTION IF EXISTS geometry (box2d);
DROP FUNCTION IF EXISTS geometry (box3d);
DROP FUNCTION IF EXISTS geometry (text);
DROP FUNCTION IF EXISTS geometry (bytea);
DROP FUNCTION IF EXISTS bytea (geometry);
DROP FUNCTION IF EXISTS ST_Simplify (geometry, float8);
DROP FUNCTION IF EXISTS ST_SnapToGrid (geometry, float8, float8, float8, float8);
DROP FUNCTION IF EXISTS ST_SnapToGrid (geometry, float8, float8);
DROP FUNCTION IF EXISTS ST_SnapToGrid (geometry, float8);
DROP FUNCTION IF EXISTS ST_SnapToGrid (geom1 geometry, geom2 geometry, float8, float8, float8, float8);
DROP FUNCTION IF EXISTS ST_Segmentize (geometry, float8);
DROP FUNCTION IF EXISTS ST_line_interpolate_point (geometry, float8);
DROP FUNCTION IF EXISTS ST_line_substring (geometry, float8, float8);
DROP FUNCTION IF EXISTS ST_line_locate_point (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_locate_between_measures (geometry, float8, float8);
DROP FUNCTION IF EXISTS ST_locate_along_measure (geometry, float8);
DROP FUNCTION IF EXISTS ST_AddMeasure (geometry, float8, float8);
DROP FUNCTION IF EXISTS ST_Intersection (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Buffer (geometry,float8);
DROP FUNCTION IF EXISTS _ST_Buffer (geometry,float8,cstring);
DROP FUNCTION IF EXISTS ST_Buffer (geometry,float8,integer);
DROP FUNCTION IF EXISTS ST_Buffer (geometry,float8,text);
DROP FUNCTION IF EXISTS ST_OffsetCurve (line geometry, distance float8, params text );
DROP FUNCTION IF EXISTS ST_ConvexHull (geometry);
DROP FUNCTION IF EXISTS _ST_LineCrossingDirection (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_LineCrossingDirection (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_SimplifyPreserveTopology (geometry, float8);
DROP FUNCTION IF EXISTS ST_IsValidReason (geometry);
DROP FUNCTION IF EXISTS ST_IsValidDetail (geometry);
DROP FUNCTION IF EXISTS ST_IsValidDetail (geometry, int4);
DROP FUNCTION IF EXISTS ST_IsValidReason (geometry, int4);
DROP FUNCTION IF EXISTS ST_IsValid (geometry, int4);
DROP FUNCTION IF EXISTS ST_HausdorffDistance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_HausdorffDistance (geom1 geometry, geom2 geometry, float8);
DROP FUNCTION IF EXISTS ST_Difference (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Boundary (geometry);
DROP FUNCTION IF EXISTS ST_SymDifference (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_symmetricdifference (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Union (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_UnaryUnion (geometry);
DROP FUNCTION IF EXISTS ST_RemoveRepeatedPoints (geometry);
DROP FUNCTION IF EXISTS ST_MakeValid (geometry);
DROP FUNCTION IF EXISTS ST_CleanGeometry (geometry);
DROP FUNCTION IF EXISTS ST_Split (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_SharedPaths (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Snap (geom1 geometry, geom2 geometry, float8);
DROP FUNCTION IF EXISTS ST_RelateMatch (text, text);
DROP FUNCTION IF EXISTS ST_Node (g geometry);
DROP FUNCTION IF EXISTS ST_DelaunayTriangles (g1 geometry, tolerance float8 , flags int4 );
DROP FUNCTION IF EXISTS ST_Combine_BBox (box3d,geometry);
DROP FUNCTION IF EXISTS ST_Collect (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Collect (geometry[]);
DROP FUNCTION IF EXISTS pgis_geometry_accum_transfn (pgis_abs, geometry);
DROP FUNCTION IF EXISTS pgis_geometry_accum_finalfn (pgis_abs);
DROP FUNCTION IF EXISTS pgis_geometry_union_finalfn (pgis_abs);
DROP FUNCTION IF EXISTS pgis_geometry_collect_finalfn (pgis_abs);
DROP FUNCTION IF EXISTS pgis_geometry_polygonize_finalfn (pgis_abs);
DROP FUNCTION IF EXISTS pgis_geometry_makeline_finalfn (pgis_abs);
DROP FUNCTION IF EXISTS ST_Union  (geometry[]);
DROP FUNCTION IF EXISTS ST_Relate (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Relate (geom1 geometry, geom2 geometry, int4);
DROP FUNCTION IF EXISTS ST_Relate (geom1 geometry, geom2 geometry,text);
DROP FUNCTION IF EXISTS ST_Disjoint (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Touches (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Touches (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_DWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS ST_DWithin (geom1 geometry, geom2 geometry, float8);
DROP FUNCTION IF EXISTS _ST_Intersects (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Intersects (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Crosses (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Crosses (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Contains (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Contains (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_CoveredBy (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_CoveredBy (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Covers (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Covers (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_ContainsProperly (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_ContainsProperly (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Overlaps (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_Within (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Within (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Overlaps (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_IsValid (geometry);
DROP FUNCTION IF EXISTS ST_Centroid (geometry);
DROP FUNCTION IF EXISTS ST_IsRing (geometry);
DROP FUNCTION IF EXISTS ST_PointOnSurface (geometry);
DROP FUNCTION IF EXISTS ST_IsSimple (geometry);
DROP FUNCTION IF EXISTS ST_IsCollection (geometry);
DROP FUNCTION IF EXISTS _ST_Equals (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_Equals (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS Equals (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_GeomFromGML (text, int4);
DROP FUNCTION IF EXISTS ST_GeomFromGML (text, int4);
DROP FUNCTION IF EXISTS ST_GeomFromGML (text);
DROP FUNCTION IF EXISTS ST_GMLToSQL (text);
DROP FUNCTION IF EXISTS ST_GMLToSQL (text, int4);
DROP FUNCTION IF EXISTS ST_GeomFromKML (text);
DROP FUNCTION IF EXISTS ST_GeomFromGeoJson (text);
DROP FUNCTION IF EXISTS postgis_libjson_version ();
DROP FUNCTION IF EXISTS ST_AsSVG (geom geometry,rel int4 ,maxdecimaldigits int4 );
DROP FUNCTION IF EXISTS _ST_AsGML (int4, geometry, int4, int4, text, text);
DROP FUNCTION IF EXISTS ST_AsGML (geom geometry, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS ST_AsGML (version int4, geom geometry, maxdecimaldigits int4 , options int4 , nprefix text , id text );
DROP FUNCTION IF EXISTS _ST_AsKML (int4,geometry, int4, text);
DROP FUNCTION IF EXISTS ST_AsKML (geom geometry, maxdecimaldigits int4 );
DROP FUNCTION IF EXISTS ST_AsKML (version int4, geom geometry, maxdecimaldigits int4 , nprefix text );
DROP FUNCTION IF EXISTS _ST_AsGeoJson (int4, geometry, int4, int4);
DROP FUNCTION IF EXISTS ST_AsGeoJson (geom geometry, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS ST_AsGeoJson (gj_version int4, geom geometry, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS ST_GeoHash (geom geometry, maxchars int4 );
DROP FUNCTION IF EXISTS ST_NumPoints (geometry);
DROP FUNCTION IF EXISTS ST_NumGeometries (geometry);
DROP FUNCTION IF EXISTS ST_GeometryN (geometry,integer);
DROP FUNCTION IF EXISTS ST_Dimension (geometry);
DROP FUNCTION IF EXISTS ST_ExteriorRing (geometry);
DROP FUNCTION IF EXISTS ST_NumInteriorRings (geometry);
DROP FUNCTION IF EXISTS ST_NumInteriorRing (geometry);
DROP FUNCTION IF EXISTS ST_InteriorRingN (geometry,integer);
DROP FUNCTION IF EXISTS GeometryType (geometry);
DROP FUNCTION IF EXISTS ST_GeometryType (geometry);
DROP FUNCTION IF EXISTS ST_PointN (geometry,integer);
DROP FUNCTION IF EXISTS ST_NumPatches (geometry);
DROP FUNCTION IF EXISTS ST_PatchN (geometry, integer);
DROP FUNCTION IF EXISTS ST_StartPoint (geometry);
DROP FUNCTION IF EXISTS ST_EndPoint (geometry);
DROP FUNCTION IF EXISTS ST_IsClosed (geometry);
DROP FUNCTION IF EXISTS ST_IsEmpty (geometry);
DROP FUNCTION IF EXISTS ST_SRID (geometry);
DROP FUNCTION IF EXISTS ST_SetSRID (geometry,int4);
DROP FUNCTION IF EXISTS ST_AsBinary (geometry,text);
DROP FUNCTION IF EXISTS ST_AsBinary (geometry);
DROP FUNCTION IF EXISTS ST_AsText (geometry);
DROP FUNCTION IF EXISTS ST_GeometryFromText (text);
DROP FUNCTION IF EXISTS ST_GeometryFromText (text, int4);
DROP FUNCTION IF EXISTS ST_GeomFromText (text);
DROP FUNCTION IF EXISTS ST_GeomFromText (text, int4);
DROP FUNCTION IF EXISTS ST_WKTToSQL (text);
DROP FUNCTION IF EXISTS ST_PointFromText (text);
DROP FUNCTION IF EXISTS ST_PointFromText (text, int4);
DROP FUNCTION IF EXISTS ST_LineFromText (text);
DROP FUNCTION IF EXISTS ST_LineFromText (text, int4);
DROP FUNCTION IF EXISTS ST_PolyFromText (text);
DROP FUNCTION IF EXISTS ST_PolyFromText (text, int4);
DROP FUNCTION IF EXISTS ST_PolygonFromText (text, int4);
DROP FUNCTION IF EXISTS ST_PolygonFromText (text);
DROP FUNCTION IF EXISTS ST_MLineFromText (text, int4);
DROP FUNCTION IF EXISTS ST_MLineFromText (text);
DROP FUNCTION IF EXISTS ST_MultiLineStringFromText (text);
DROP FUNCTION IF EXISTS ST_MultiLineStringFromText (text, int4);
DROP FUNCTION IF EXISTS ST_MPointFromText (text, int4);
DROP FUNCTION IF EXISTS ST_MPointFromText (text);
DROP FUNCTION IF EXISTS ST_MultiPointFromText (text);
DROP FUNCTION IF EXISTS ST_MultiPointFromText (text);
DROP FUNCTION IF EXISTS ST_MPolyFromText (text, int4);
DROP FUNCTION IF EXISTS ST_MPolyFromText (text);
DROP FUNCTION IF EXISTS ST_MultiPolygonFromText (text, int4);
DROP FUNCTION IF EXISTS ST_MultiPolygonFromText (text);
DROP FUNCTION IF EXISTS ST_GeomCollFromText (text, int4);
DROP FUNCTION IF EXISTS ST_GeomCollFromText (text);
DROP FUNCTION IF EXISTS ST_GeomFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_GeomFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_PointFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_PointFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_LineFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_LineFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_LinestringFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_LinestringFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_PolyFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_PolyFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_PolygonFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_PolygonFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MPointFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_MPointFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MultiPointFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_MultiPointFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MultiLineFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MLineFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_MLineFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MPolyFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_MPolyFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_MultiPolyFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_MultiPolyFromWKB (bytea);
DROP FUNCTION IF EXISTS ST_GeomCollFromWKB (bytea, int);
DROP FUNCTION IF EXISTS ST_GeomCollFromWKB (bytea);
DROP FUNCTION IF EXISTS _ST_MaxDistance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_MaxDistance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_ClosestPoint (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_ShortestLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_LongestLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_LongestLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_DFullyWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS ST_DFullyWithin (geom1 geometry, geom2 geometry, float8);
DROP FUNCTION IF EXISTS ST_FlipCoordinates (geometry);
DROP FUNCTION IF EXISTS ST_BdPolyFromText (text, integer);
DROP FUNCTION IF EXISTS ST_BdMPolyFromText (text, integer);
DROP FUNCTION IF EXISTS UnlockRows (text);
DROP FUNCTION IF EXISTS LockRow (text, text, text, text, timestamp);
DROP FUNCTION IF EXISTS LockRow (text, text, text, text);
DROP FUNCTION IF EXISTS LockRow (text, text, text);
DROP FUNCTION IF EXISTS LockRow (text, text, text, timestamp);
DROP FUNCTION IF EXISTS AddAuth (text);
DROP FUNCTION IF EXISTS CheckAuth (text, text, text);
DROP FUNCTION IF EXISTS CheckAuth (text, text);
DROP FUNCTION IF EXISTS CheckAuthTrigger ();
DROP FUNCTION IF EXISTS GetTransactionID ();
DROP FUNCTION IF EXISTS EnableLongTransactions ();
DROP FUNCTION IF EXISTS LongTransactionsEnabled ();
DROP FUNCTION IF EXISTS DisableLongTransactions ();
DROP FUNCTION IF EXISTS geography (geography, integer, boolean);
DROP FUNCTION IF EXISTS geography (bytea);
DROP FUNCTION IF EXISTS bytea (geography);
DROP FUNCTION IF EXISTS ST_AsText (geography);
DROP FUNCTION IF EXISTS ST_AsText (text);
DROP FUNCTION IF EXISTS ST_GeographyFromText (text);
DROP FUNCTION IF EXISTS ST_GeogFromText (text);
DROP FUNCTION IF EXISTS ST_GeogFromWKB (bytea);
DROP FUNCTION IF EXISTS postgis_typmod_dims (integer);
DROP FUNCTION IF EXISTS postgis_typmod_srid (integer);
DROP FUNCTION IF EXISTS postgis_typmod_type (integer);
DROP FUNCTION IF EXISTS geography (geometry);
DROP FUNCTION IF EXISTS geometry (geography);
DROP FUNCTION IF EXISTS geography_gist_consistent (internal,geography,int4);
DROP FUNCTION IF EXISTS geography_gist_compress (internal);
DROP FUNCTION IF EXISTS geography_gist_penalty (internal,internal,internal);
DROP FUNCTION IF EXISTS geography_gist_picksplit (internal, internal);
DROP FUNCTION IF EXISTS geography_gist_union (bytea, internal);
DROP FUNCTION IF EXISTS geography_gist_same (box2d, box2d, internal);
DROP FUNCTION IF EXISTS geography_gist_decompress (internal);
DROP FUNCTION IF EXISTS geography_gist_selectivity  (internal, oid, internal, int4);
DROP FUNCTION IF EXISTS geography_gist_join_selectivity (internal, oid, internal, smallint);
DROP FUNCTION IF EXISTS geography_overlaps (geography, geography);
DROP FUNCTION IF EXISTS geography_lt (geography, geography);
DROP FUNCTION IF EXISTS geography_le (geography, geography);
DROP FUNCTION IF EXISTS geography_gt (geography, geography);
DROP FUNCTION IF EXISTS geography_ge (geography, geography);
DROP FUNCTION IF EXISTS geography_eq (geography, geography);
DROP FUNCTION IF EXISTS geography_cmp (geography, geography);
DROP FUNCTION IF EXISTS ST_AsSVG (geog geography,rel int4 ,maxdecimaldigits int4 );
DROP FUNCTION IF EXISTS ST_AsSVG (text);
DROP FUNCTION IF EXISTS _ST_AsGML (int4, geography, int4, int4, text, text);
DROP FUNCTION IF EXISTS ST_AsGML (text);
DROP FUNCTION IF EXISTS ST_AsGML (geog geography, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS ST_AsGML (version int4, geog geography, maxdecimaldigits int4 , options int4 , nprefix text , id text );
DROP FUNCTION IF EXISTS _ST_AsKML (int4, geography, int4, text);
DROP FUNCTION IF EXISTS ST_AsKML (geog geography, maxdecimaldigits int4 );
DROP FUNCTION IF EXISTS ST_AsKML (text);
DROP FUNCTION IF EXISTS ST_AsKML (version int4, geog geography, maxdecimaldigits int4 , nprefix text );
DROP FUNCTION IF EXISTS _ST_AsGeoJson (int4, geography, int4, int4);
DROP FUNCTION IF EXISTS ST_AsGeoJson (text);
DROP FUNCTION IF EXISTS ST_AsGeoJson (geog geography, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS ST_AsGeoJson (gj_version int4, geog geography, maxdecimaldigits int4 , options int4 );
DROP FUNCTION IF EXISTS _ST_Distance (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS _ST_DWithin (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS ST_Distance (geography, geography, boolean);
DROP FUNCTION IF EXISTS ST_Distance (geography, geography);
DROP FUNCTION IF EXISTS ST_Distance (text, text);
DROP FUNCTION IF EXISTS _ST_Expand (geography, float8);
DROP FUNCTION IF EXISTS ST_DWithin (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS ST_DWithin (geography, geography, float8);
DROP FUNCTION IF EXISTS ST_DWithin (text, text, float8);
DROP FUNCTION IF EXISTS _ST_DistanceUnCached (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS _ST_DistanceUnCached (geography, geography, boolean);
DROP FUNCTION IF EXISTS _ST_DistanceUnCached (geography, geography);
DROP FUNCTION IF EXISTS _ST_DistanceTree (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS _ST_DistanceTree (geography, geography);
DROP FUNCTION IF EXISTS _ST_DWithinUnCached (geography, geography, float8, boolean);
DROP FUNCTION IF EXISTS _ST_DWithinUnCached (geography, geography, float8);
DROP FUNCTION IF EXISTS ST_Area (geog geography, use_spheroid boolean );
DROP FUNCTION IF EXISTS ST_Area (text);
DROP FUNCTION IF EXISTS ST_Length (geog geography, use_spheroid boolean );
DROP FUNCTION IF EXISTS ST_Length (text);
DROP FUNCTION IF EXISTS ST_Project (geog geography, distance float8, azimuth float8);
DROP FUNCTION IF EXISTS ST_Azimuth (geog1 geography, geog2 geography);
DROP FUNCTION IF EXISTS ST_Perimeter (geog geography, use_spheroid boolean );
DROP FUNCTION IF EXISTS _ST_PointOutside (geography);
DROP FUNCTION IF EXISTS _ST_Covers (geography, geography);
DROP FUNCTION IF EXISTS ST_Covers (geography, geography);
DROP FUNCTION IF EXISTS ST_Covers (text, text);
DROP FUNCTION IF EXISTS ST_CoveredBy (geography, geography);
DROP FUNCTION IF EXISTS ST_CoveredBy (text, text);
DROP FUNCTION IF EXISTS ST_Segmentize (geog geography, max_segment_length float8);
DROP FUNCTION IF EXISTS ST_Intersects (geography, geography);
DROP FUNCTION IF EXISTS ST_Intersects (text, text);
DROP FUNCTION IF EXISTS _ST_BestSRID (geography, geography);
DROP FUNCTION IF EXISTS _ST_BestSRID (geography);
DROP FUNCTION IF EXISTS ST_Buffer (geography, float8);
DROP FUNCTION IF EXISTS ST_Buffer (text, float8);
DROP FUNCTION IF EXISTS ST_Intersection (geography, geography);
DROP FUNCTION IF EXISTS ST_Intersection (text, text);
DROP FUNCTION IF EXISTS ST_AsBinary (geography);
DROP FUNCTION IF EXISTS ST_AsBinary (geography,text);
DROP FUNCTION IF EXISTS ST_AsEWKT (geography);
DROP FUNCTION IF EXISTS ST_AsEWKT (text);
DROP FUNCTION IF EXISTS GeometryType (geography);
DROP FUNCTION IF EXISTS ST_Summary (geography);
DROP FUNCTION IF EXISTS ST_GeoHash (geog geography, maxchars int4 );
DROP FUNCTION IF EXISTS ST_distance_sphere (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_distance_sphere (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS postgis_type_name (geomname varchar, coord_dimension integer, use_new_name boolean );
DROP FUNCTION IF EXISTS postgis_constraint_srid (geomschema text, geomtable text, geomcolumn text);
DROP FUNCTION IF EXISTS postgis_constraint_dims (geomschema text, geomtable text, geomcolumn text);
DROP FUNCTION IF EXISTS postgis_constraint_type (geomschema text, geomtable text, geomcolumn text);
DROP FUNCTION IF EXISTS ST_3DDistance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_3DMaxDistance (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_3DClosestPoint (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_3DShortestLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_3DLongestLine (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS _ST_3DDWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS ST_3DDWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS _ST_3DDFullyWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS ST_3DDFullyWithin (geom1 geometry, geom2 geometry,float8);
DROP FUNCTION IF EXISTS ST_3DIntersects (geom1 geometry, geom2 geometry);
DROP FUNCTION IF EXISTS ST_CoordDim (Geometry geometry);
DROP FUNCTION IF EXISTS ST_CurveToLine (geometry, integer);
DROP FUNCTION IF EXISTS ST_CurveToLine (geometry);
DROP FUNCTION IF EXISTS ST_HasArc (Geometry geometry);
DROP FUNCTION IF EXISTS ST_LineToCurve (Geometry geometry);
DROP FUNCTION IF EXISTS _ST_OrderingEquals (GeometryA geometry, GeometryB geometry);
DROP FUNCTION IF EXISTS ST_OrderingEquals (GeometryA geometry, GeometryB geometry);
DROP FUNCTION IF EXISTS ST_Point (float8, float8);
DROP FUNCTION IF EXISTS ST_Polygon (geometry, int);
DROP FUNCTION IF EXISTS ST_WKBToSQL (WKB bytea);
DROP FUNCTION IF EXISTS ST_LocateBetween (Geometry geometry, FromMeasure float8, ToMeasure float8, LeftRightOffset float8 );
DROP FUNCTION IF EXISTS ST_LocateAlong (Geometry geometry, Measure float8, LeftRightOffset float8 );
DROP FUNCTION IF EXISTS ST_LocateBetweenElevations (Geometry geometry, FromElevation float8, ToElevation float8);
DROP FUNCTION IF EXISTS ST_InterpolatePoint (Line geometry, Point geometry);
DROP FUNCTION IF EXISTS ST_MinimumBoundingCircle (inputgeom geometry, segs_per_quarter integer );
DROP FUNCTION IF EXISTS _st_concavehull (param_inputgeom geometry);
DROP FUNCTION IF EXISTS ST_ConcaveHull (param_geom geometry, param_pctconvex float, param_allow_holes boolean );
DROP FUNCTION IF EXISTS _ST_AsX3D (int4, geometry, int4, int4, text);
DROP FUNCTION IF EXISTS ST_AsX3D (geom geometry, maxdecimaldigits integer , options integer );
-- Drop all types.
DROP TYPE spheroid CASCADE;
DROP TYPE geometry CASCADE;
DROP TYPE box3d CASCADE;
DROP TYPE box2d CASCADE;
DROP TYPE box2df CASCADE;
DROP TYPE gidx CASCADE;
DROP TYPE geometry_dump CASCADE;
DROP TYPE valid_detail CASCADE;
DROP TYPE pgis_abs CASCADE;
DROP TYPE geography CASCADE;
-- Drop all functions needed for types definition.
DROP FUNCTION IF EXISTS geometry_typmod_in (cstring[]);
DROP FUNCTION IF EXISTS geometry_typmod_out (integer);
DROP FUNCTION IF EXISTS geometry_analyze (internal);
DROP FUNCTION IF EXISTS geography_typmod_in (cstring[]);
DROP FUNCTION IF EXISTS geography_typmod_out (integer);
DROP FUNCTION IF EXISTS geography_analyze (internal);
-- Drop all schemas.

COMMIT;
