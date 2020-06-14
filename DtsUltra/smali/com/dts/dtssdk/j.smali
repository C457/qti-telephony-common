.class Lcom/dts/dtssdk/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dts/dtssdk/j;

.field private static d:I

.field private static e:Z


# instance fields
.field private c:Lcom/dts/dtssdk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/j;->a:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcom/dts/dtssdk/j;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dts/dtssdk/b;

    invoke-direct {v0}, Lcom/dts/dtssdk/b;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/j;->c:Lcom/dts/dtssdk/d;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/j;)Lcom/dts/dtssdk/d;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/j;->c:Lcom/dts/dtssdk/d;

    return-object v0
.end method

.method static a()Lcom/dts/dtssdk/j;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/j;->b:Lcom/dts/dtssdk/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/j;->b:Lcom/dts/dtssdk/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/j;

    invoke-direct {v0}, Lcom/dts/dtssdk/j;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/j;->b:Lcom/dts/dtssdk/j;

    sget-boolean v0, Lcom/dts/dtssdk/j;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f;->d()I

    move-result v0

    sput v0, Lcom/dts/dtssdk/j;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dts/dtssdk/j;->e:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/j;->b:Lcom/dts/dtssdk/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/dts/dtssdk/j;->d:I

    return v0
.end method


# virtual methods
.method final a(ILjava/lang/String;II)Lcom/dts/dtssdk/o;
    .locals 7

    new-instance v6, Lcom/dts/dtssdk/j$a;

    new-instance v0, Lcom/dts/dtssdk/j$30;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/j$30;-><init>(Lcom/dts/dtssdk/j;ILjava/lang/String;II)V

    invoke-direct {v6, p0, v0}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v6}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;

    return-object v0
.end method

.method final b()Lcom/dts/dtssdk/o;
    .locals 2

    new-instance v0, Lcom/dts/dtssdk/j$a;

    new-instance v1, Lcom/dts/dtssdk/j$19;

    invoke-direct {v1, p0}, Lcom/dts/dtssdk/j$19;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v0, p0, v1}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;

    return-object v0
.end method
