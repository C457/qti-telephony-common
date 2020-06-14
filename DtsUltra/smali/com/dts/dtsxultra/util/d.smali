.class public final Lcom/dts/dtsxultra/util/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/dts/dtssdk/a/n;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/a/n;->d:Lcom/dts/dtssdk/a/n;

    sput-object v0, Lcom/dts/dtsxultra/util/d;->a:Lcom/dts/dtssdk/a/n;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dts/dtsxultra/util/d;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "f08a4c48-0887-11e4-9191-0800200c9a13"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "71527d33-21af-4501-8cd1-b0b20b14ae1c"

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "f08a4c48-0887-11e4-9191-0800200c9a13"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "f08a4c48-0887-11e4-9191-0800200c9a13"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "f08a4c48-0887-11e4-9191-0800200c9a19"

    return-object v0
.end method

.method public static e()[I
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/util/d;->b:[I

    return-object v0
.end method
