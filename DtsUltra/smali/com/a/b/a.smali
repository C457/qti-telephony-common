.class public Lcom/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/by;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/a/b/v;

.field public b:Lcom/a/b/an;

.field public c:Lcom/a/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/a/b/a;->b()Lcom/a/b/aq;

    move-result-object v1

    sget v0, Lcom/a/a/c;->a:I

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lcom/a/b/aq;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static declared-synchronized a()Lcom/a/b/a;
    .locals 3

    const-class v1, Lcom/a/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    const-class v2, Lcom/a/b/a;

    invoke-virtual {v0, v2}, Lcom/a/b/bh;->a(Ljava/lang/Class;)Lcom/a/b/by;

    move-result-object v0

    check-cast v0, Lcom/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/a/b/a;->b()Lcom/a/b/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/a/b/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/a/b/aq;
    .locals 2

    invoke-static {}, Lcom/a/b/cu;->a()Lcom/a/b/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/cu;->b()Lcom/a/b/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/a/b/aq;

    invoke-virtual {v0, v1}, Lcom/a/b/cs;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/aq;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/a/b/aq;

    invoke-static {v0}, Lcom/a/b/cs;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/a/b/an;

    invoke-direct {v0}, Lcom/a/b/an;-><init>()V

    iput-object v0, p0, Lcom/a/b/a;->b:Lcom/a/b/an;

    new-instance v0, Lcom/a/b/v;

    invoke-direct {v0}, Lcom/a/b/v;-><init>()V

    iput-object v0, p0, Lcom/a/b/a;->a:Lcom/a/b/v;

    new-instance v0, Lcom/a/b/x;

    invoke-direct {v0}, Lcom/a/b/x;-><init>()V

    iput-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/x;

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/a/b/dd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/b/a;->d:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/a/b/bv;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/a/b/dd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/a/b/a;->d:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
