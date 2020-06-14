.class Lcom/dts/dtssdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/d;


# static fields
.field private static final c:Ljava/lang/String;

.field private static g:I

.field private static h:[B


# instance fields
.field a:Lcom/dts/dtssdk/c;

.field private b:Z

.field private d:Ljava/util/UUID;

.field private e:Ljava/util/UUID;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    const/16 v0, 0x24

    sput v0, Lcom/dts/dtssdk/b;->g:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dts/dtssdk/b;->h:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0xbt
        0xbt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    const-string v0, "1d4033c0-8557-11df-9f2d-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b;->d:Ljava/util/UUID;

    const-string v0, "146edfc0-7ed2-11e4-80eb-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/b;->e:Ljava/util/UUID;

    const-string v0, "00000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/dts/dtssdk/b;->f:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/c;

    iget-object v1, p0, Lcom/dts/dtssdk/b;->d:Ljava/util/UUID;

    iget-object v2, p0, Lcom/dts/dtssdk/b;->e:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/c;-><init>(Ljava/util/UUID;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    return-void
.end method

.method private a(I[I)I
    .locals 3

    invoke-static {p1}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v0

    invoke-static {p2}, Lcom/dts/dtssdk/b;->b([I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {v2, v0, v1}, Lcom/dts/dtssdk/c;->a([B[B)I

    move-result v0

    return v0
.end method

.method private a(Lcom/dts/a/a;)I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/dts/dtssdk/b$1;->a:[I

    invoke-virtual {p1}, Lcom/dts/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget-object v1, Lcom/dts/dtssdk/b;->h:[B

    invoke-static {v1, v2}, Lcom/dts/dtssdk/b;->a([BI)I

    move-result v1

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    iget v0, v0, Lcom/dts/dtssdk/o;->a:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a([BI)I
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private a([I[I)I
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getParameter param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dts/dtssdk/b;->b([I)[B

    move-result-object v1

    invoke-static {p2}, Lcom/dts/dtssdk/b;->b([I)[B

    move-result-object v3

    iget-object v2, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {v2, v1, v3}, Lcom/dts/dtssdk/c;->b([B[B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    :goto_2
    div-int/lit8 v2, v1, 0x4

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x4

    invoke-static {v3, v2}, Lcom/dts/dtssdk/b;->a([BI)I

    move-result v2

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/dts/a/a;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/dts/dtssdk/o;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setParameterStringData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") | str: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 v0, v0, 0x4

    :cond_1
    add-int/lit16 v0, v0, 0x5a40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v1, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {p1}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-static {v2}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dts/dtssdk/c;->a([B[B)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setParameterStringData("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") | result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameterStringData("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") | Error encoding str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    goto :goto_0
.end method

.method private a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v3, v0, [I

    invoke-virtual {p1}, Lcom/dts/a/a;->a()I

    move-result v0

    aput v0, v3, v2

    if-eqz p2, :cond_0

    move v0, v2

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    aget v5, p2, v0

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-array v4, v1, [I

    invoke-direct {p0, v3, v4}, Lcom/dts/dtssdk/b;->a([I[I)I

    move-result v3

    if-gez v3, :cond_1

    :goto_2
    if-eqz v1, :cond_2

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v3}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_3
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/dts/dtssdk/o;

    aget v1, v4, v2

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/dts/a/a;[II)Lcom/dts/dtssdk/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/a/a;",
            "[II)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, -0x3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {p1}, Lcom/dts/a/a;->a()I

    move-result v3

    aput v3, v4, v2

    move v3, v2

    :goto_0
    if-gtz v3, :cond_0

    aget v5, p2, v2

    aput v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/dts/dtssdk/b;->b([I)[B

    move-result-object v3

    new-array v4, p3, [B

    iget-object v5, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {v5, v3, v4}, Lcom/dts/dtssdk/c;->b([B[B)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getParameterString ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gez v3, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    new-instance v1, Lcom/dts/dtssdk/o;

    invoke-direct {v1, v3, v0}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-le v3, p3, :cond_3

    sget-object v1, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getParameterString ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") | Bad data length received from system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/dts/dtssdk/o;

    invoke-direct {v1, v7, v0}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getParameterString ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") | strLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    const/16 v2, 0x8

    if-le v3, v2, :cond_5

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "str.len = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getParameterString ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") | str : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/dts/dtssdk/o;

    invoke-direct {v1, v3, v0}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getParameterString ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") | Bad string received from system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/dts/dtssdk/o;

    invoke-direct {v1, v7, v0}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method private b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/a/a;",
            "[I)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v3, v0, [I

    invoke-virtual {p1}, Lcom/dts/a/a;->a()I

    move-result v0

    aput v0, v3, v2

    if-eqz p2, :cond_0

    move v0, v2

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    aget v5, p2, v0

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-array v4, v1, [I

    invoke-direct {p0, v3, v4}, Lcom/dts/dtssdk/b;->a([I[I)I

    move-result v3

    if-gez v3, :cond_1

    :goto_2
    if-eqz v1, :cond_2

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v3}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_3
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/dts/dtssdk/o;

    aget v1, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b([I)[B
    .locals 4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static f(I)[B
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private g(II)I
    .locals 3

    invoke-static {p1}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v0

    invoke-static {p2}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {v2, v0, v1}, Lcom/dts/dtssdk/c;->a([B[B)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/dts/dtssdk/o;
    .locals 2

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->a:Lcom/dts/a/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Lcom/dts/dtssdk/o;
    .locals 2

    new-instance v0, Lcom/dts/dtssdk/o;

    sget-object v1, Lcom/dts/a/a;->b:Lcom/dts/a/a;

    invoke-virtual {v1}, Lcom/dts/a/a;->a()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/dts/dtssdk/b;->g(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v0
.end method

.method public final a(II)Lcom/dts/dtssdk/o;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v1, Lcom/dts/a/a;->C:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(III)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->D:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final a(ILjava/lang/String;I)Lcom/dts/dtssdk/o;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/dts/a/a;->q:Lcom/dts/a/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final a([F)Lcom/dts/dtssdk/o;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    const-string v1, "setListeningTest | error listening profile must be 4 values"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->j:Lcom/dts/a/a;

    invoke-virtual {v0}, Lcom/dts/a/a;->a()I

    move-result v1

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v1}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    invoke-virtual {v2, v1, v0}, Lcom/dts/dtssdk/c;->a([B[B)I

    move-result v1

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    goto :goto_0
.end method

.method public final a([I)Lcom/dts/dtssdk/o;
    .locals 3

    array-length v0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGEQGainAll called with non-10 array size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dts/dtssdk/o;

    sget-object v1, Lcom/dts/a/a;->i:Lcom/dts/a/a;

    invoke-virtual {v1}, Lcom/dts/a/a;->a()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    goto :goto_0
.end method

.method public final b()Lcom/dts/dtssdk/o;
    .locals 2

    sget-object v0, Lcom/dts/a/a;->g:Lcom/dts/a/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/dts/dtssdk/o;
    .locals 2

    new-instance v0, Lcom/dts/dtssdk/o;

    sget-object v1, Lcom/dts/a/a;->f:Lcom/dts/a/a;

    invoke-virtual {v1}, Lcom/dts/a/a;->a()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/dts/dtssdk/b;->g(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v0
.end method

.method public final b(II)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->d:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final b(III)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->E:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final c()Lcom/dts/dtssdk/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<[I>;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v5, [I

    sget-object v3, Lcom/dts/a/a;->h:Lcom/dts/a/a;

    invoke-virtual {v3}, Lcom/dts/a/a;->a()I

    move-result v3

    new-array v4, v1, [I

    aput v3, v4, v0

    invoke-direct {p0, v4, v2}, Lcom/dts/dtssdk/b;->a([I[I)I

    move-result v3

    if-gez v3, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v3}, Lcom/dts/dtssdk/o;-><init>(I)V

    :goto_1
    return-object v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v3, 0x4

    if-le v1, v5, :cond_2

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGEQGainAll() | gain["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public final c(I)Lcom/dts/dtssdk/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v1, Lcom/dts/a/a;->c:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final c(II)Lcom/dts/dtssdk/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v1, Lcom/dts/a/a;->F:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final c(III)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->G:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final d(I)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->X:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final d(II)Lcom/dts/dtssdk/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v1, Lcom/dts/a/a;->H:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final d(III)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->K:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final d()[B
    .locals 7

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DtsClient=DtsAudioRefl;HpxService=N/A;EagleVersion=2.0;EagleDescription=None;EaglePlatformVersion=0.0.0.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->e:Lcom/dts/a/a;

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;)I

    move-result v1

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v2, -0x3

    invoke-direct {v0, v2}, Lcom/dts/dtssdk/o;-><init>(I)V

    if-lez v1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    sget-object v2, Lcom/dts/a/a;->e:Lcom/dts/a/a;

    invoke-direct {p0, v2, v0, v1}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[II)Lcom/dts/dtssdk/o;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/dts/dtssdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    move v2, v0

    :goto_2
    const-string v5, "DtsClient=DtsAudioRefl;"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v2

    new-array v4, v0, [B

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v0, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final e()Lcom/dts/dtssdk/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "inbox_accessory;route_bluetooth;route_line_out;route_usb;route_int_speaker;speaker_modes;"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v3, "featured_accessories;generic_accessories;stereo_preference;geq;"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v3, "branded_accessories;listening_test;bt_accessory_recommendation;usb_accessory_recommendation;dtsx_ultra;"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->o:Lcom/dts/a/a;

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/dts/dtssdk/o;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    new-instance v0, Lcom/dts/dtssdk/o;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getDSECTokens when requesting size, got length = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " now requesting the string"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [I

    aput v2, v0, v2

    sget-object v1, Lcom/dts/a/a;->o:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0, v3}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[II)Lcom/dts/dtssdk/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(I)Lcom/dts/dtssdk/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v2

    sget-object v1, Lcom/dts/a/a;->r:Lcom/dts/a/a;

    sget v2, Lcom/dts/dtssdk/b;->g:I

    invoke-direct {p0, v1, v0, v2}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[II)Lcom/dts/dtssdk/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(II)Lcom/dts/dtssdk/o;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v1, Lcom/dts/a/a;->L:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final e(III)Lcom/dts/dtssdk/o;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    new-instance v1, Lcom/dts/dtssdk/o;

    sget-object v2, Lcom/dts/a/a;->S:Lcom/dts/a/a;

    invoke-virtual {v2}, Lcom/dts/a/a;->a()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/dts/dtssdk/b;->a(I[I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v1
.end method

.method public final f()Lcom/dts/dtssdk/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    const-string v1, "ui_hide_integration_test_screen=false\nui_hide_demo_screen=false\ndisable_treble_level=false\ndisable_bass_level=false\ndisable_dialog_level=false"

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->p:Lcom/dts/a/a;

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/dts/dtssdk/o;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    new-instance v0, Lcom/dts/dtssdk/o;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getCustomerConfigs when requesting size, got length = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " now requesting the string"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [I

    aput v2, v0, v2

    sget-object v1, Lcom/dts/a/a;->p:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0, v3}, Lcom/dts/dtssdk/b;->a(Lcom/dts/a/a;[II)Lcom/dts/dtssdk/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final f(II)Lcom/dts/dtssdk/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v1, Lcom/dts/a/a;->T:Lcom/dts/a/a;

    invoke-direct {p0, v1, v0}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/dts/dtssdk/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<[F>;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x10

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/dts/dtssdk/b;->a:Lcom/dts/dtssdk/c;

    sget-object v4, Lcom/dts/a/a;->k:Lcom/dts/a/a;

    invoke-virtual {v4}, Lcom/dts/a/a;->a()I

    move-result v4

    invoke-static {v4}, Lcom/dts/dtssdk/b;->f(I)[B

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/dts/dtssdk/c;->b([B[B)I

    move-result v4

    if-gez v4, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getListeningTest | error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/o;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-array v5, v6, [F

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v6}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getListeningTest | "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v5, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-direct {v0, v4, v5}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public final h()Lcom/dts/dtssdk/o;
    .locals 3

    new-instance v0, Lcom/dts/dtssdk/o;

    sget-object v1, Lcom/dts/a/a;->l:Lcom/dts/a/a;

    invoke-virtual {v1}, Lcom/dts/a/a;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dts/dtssdk/b;->g(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v0
.end method

.method public final i()Lcom/dts/dtssdk/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dts/dtssdk/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/o;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/o;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/a/a;->m:Lcom/dts/a/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Lcom/dts/dtssdk/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dts/a/a;->n:Lcom/dts/a/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/dts/dtssdk/o;
    .locals 3

    new-instance v0, Lcom/dts/dtssdk/o;

    sget-object v1, Lcom/dts/a/a;->W:Lcom/dts/a/a;

    invoke-virtual {v1}, Lcom/dts/a/a;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dts/dtssdk/b;->g(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/o;-><init>(I)V

    return-object v0
.end method

.method public final l()Lcom/dts/dtssdk/o;
    .locals 2

    sget-object v0, Lcom/dts/a/a;->Y:Lcom/dts/a/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtssdk/b;->b(Lcom/dts/a/a;[I)Lcom/dts/dtssdk/o;

    move-result-object v0

    return-object v0
.end method
