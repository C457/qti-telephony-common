.class public Lcom/a/b/bz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final d:[B


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/a/b/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/cp",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/bz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/bz;->a:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/b/bz;->d:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x5ct
        -0x8t
        0x7dt
        0x79t
        0x6bt
        -0x41t
        -0x3dt
        -0x4at
        -0x72t
        -0x20t
        0x0t
        -0x39t
        -0x57t
        -0x23t
        -0x38t
        -0x6t
        -0x34t
        0x33t
        0x7et
        -0x68t
        0x31t
        0x4ft
        -0x34t
        0x76t
        -0x54t
        0x63t
        -0x34t
        -0xet
        -0x7et
        -0x1bt
        -0x40t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/b/cp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/a/b/cp",
            "<TObjectType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/bz;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/bz;->c:Lcom/a/b/cp;

    return-void
.end method

.method public static a([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/a/b/bn;

    invoke-direct {v0}, Lcom/a/b/bn;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/b/bn;->update([B)V

    invoke-virtual {v0}, Lcom/a/b/bn;->b()I

    move-result v0

    goto :goto_0
.end method

.method static b([B)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    sget-object v0, Lcom/a/b/bz;->d:[B

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    sget-object v4, Lcom/a/b/bz;->d:[B

    rem-int v5, v0, v2

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x1f

    rem-int/lit16 v4, v4, 0xfb

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final c([B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TObjectType;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/bz;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Nothing to decode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/a/b/bz;->b([B)V

    new-instance v0, Lcom/a/b/cn;

    new-instance v1, Lcom/a/b/cl;

    invoke-direct {v1}, Lcom/a/b/cl;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/b/cn;-><init>(Lcom/a/b/cp;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/a/b/cp;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x3

    sget-object v2, Lcom/a/b/bz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Decoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/bz;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lcom/a/b/bz;->c:Lcom/a/b/cp;

    invoke-interface {v0, v1}, Lcom/a/b/cp;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
