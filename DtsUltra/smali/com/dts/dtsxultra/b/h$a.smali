.class final Lcom/dts/dtsxultra/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:[I

.field c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/dts/dtsxultra/b/h;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/b/h;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/b/h$a;->d:Lcom/dts/dtsxultra/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dts/dtsxultra/b/h$a;->e:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h$a;->a:Landroid/os/Handler;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h$a;->c:Ljava/util/HashSet;

    return-void

    nop

    :array_0
    .array-data 4
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/b/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/h$a;-><init>(Lcom/dts/dtsxultra/b/h;)V

    return-void
.end method


# virtual methods
.method final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    aput p2, v0, p1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->a(II)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$a;->d:Lcom/dts/dtsxultra/b/h;

    invoke-virtual {v1, v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    return-void
.end method

.method final a([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a([I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$a;->d:Lcom/dts/dtsxultra/b/h;

    invoke-virtual {v1, v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_1
    return-void
.end method
