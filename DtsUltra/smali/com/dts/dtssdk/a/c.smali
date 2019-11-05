.class Lcom/dts/dtssdk/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " table has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v0, v0

    goto :goto_0
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/f;
    .locals 10

    new-instance v3, Lcom/dts/dtssdk/a/f;

    invoke-direct {v3}, Lcom/dts/dtssdk/a/f;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Initiating database check for any errors"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Config"

    invoke-static {p0, v0}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Config table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "Config"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    const-string v0, "Device"

    invoke-static {p0, v0}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Device table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "Device"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    const-string v1, "Product"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Product table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "Product"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_2
    const-string v1, "Brand"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Brand table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "Brand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_3
    const-string v1, "ProductAudioRoute"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "ProductAudioRoute table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "ProductAudioRoute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_4
    const-string v1, "AudioRouteEnum"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "AudioRouteEnum table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "AudioRouteEnum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_5
    const-string v1, "ProductLocalization"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "ProductLocalization table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "ProductLocalization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_6
    const-string v1, "DeviceFeaturedProduct"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "DeviceFeaturedProduct table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "DeviceFeaturedProduct"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_7
    const-string v1, "DeviceBrand"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "DeviceBrand table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "DeviceBrand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_8
    const-string v1, "Asset"

    invoke-static {p0, v1}, Lcom/dts/dtssdk/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Asset table does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    const-string v2, "Asset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    :cond_9
    if-nez v0, :cond_c

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database error check finished with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dts/dtssdk/a/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errors throughout the database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "One or more table missing. Cannot perform other data check"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_a
    const-string v0, "Config"

    invoke-static {p0, v0}, Lcom/dts/dtssdk/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Config table is empty, or has more than one entries!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->a:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "Device"

    invoke-static {p0, v0}, Lcom/dts/dtssdk/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v1, "Device table is empty, or has more than one entries!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/a/f$c;->b:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v1, v0}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :cond_c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/dts/dtssdk/a/m;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/m;-><init>()V

    const-string v1, "Product"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "Uuid"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "BrandId"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "SubType"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Uuid"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v6, "BrandId"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Type"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "SubType"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    :goto_4
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Headphone"

    invoke-static {v2}, Lcom/dts/dtssdk/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, -0x1

    if-ne v0, v7, :cond_e

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Product ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is type HEADPHONE but brand ID is null!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/dts/dtssdk/a/f$d;->e:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$c;->f:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v2, v1}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v1, v0

    goto/16 :goto_3

    :cond_d
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_4

    :cond_e
    const-string v2, "Brand"

    if-eqz p0, :cond_f

    const/4 v7, -0x1

    if-ne v0, v7, :cond_10

    :cond_f
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_1a

    sget-object v2, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Product ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\'s brand ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ") does not exist in Brand table!"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$c;->d:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v2, v1}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_10
    new-instance v7, Lcom/dts/dtssdk/a/m;

    invoke-direct {v7}, Lcom/dts/dtssdk/a/m;-><init>()V

    invoke-virtual {v7, v2}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v2, "Id"

    invoke-virtual {v7, v2}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Id="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v7}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x1

    if-ne v7, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    :cond_12
    const-string v7, "Standard"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1a

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Product ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is type STANDARD but has brand ID!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/dts/dtssdk/a/f$d;->e:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$c;->g:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v2, v1}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto/16 :goto_5

    :cond_13
    const-string v0, "StereoRoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "McRoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "DeviceHeadphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "DeviceTuning"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Product ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\'s type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not recognized!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/dts/dtssdk/a/f$d;->e:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/a/f$c;->h:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v2, v1}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto/16 :goto_5

    :cond_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/dts/dtssdk/a/m;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/m;-><init>()V

    const-string v2, "DeviceFeaturedProduct"

    invoke-virtual {v0, v2}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v2, "ProductId"

    invoke-virtual {v0, v2}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "ProductId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    const-string v7, "Found a reference in Featured Product table that does not exist in Product table!"

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    :cond_15
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->d:Lcom/dts/dtssdk/a/f$d;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v0

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_a

    :cond_17
    sget-object v0, Lcom/dts/dtssdk/a/f$d;->g:Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/a/f$c;->i:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v3, v0, v7}, Lcom/dts/dtssdk/a/f;->a(Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    goto :goto_9

    :cond_18
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lcom/dts/dtssdk/a/f;->b()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Database error check finished with "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dts/dtssdk/a/f;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " errors throughout the database"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/dts/dtssdk/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errors found in the Product table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object v0, v3

    goto/16 :goto_2

    :cond_1a
    move v0, v1

    goto/16 :goto_5
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name=?"

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " table exists: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
