.class Lcom/dts/dtssdk/DtsCore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/DtsCore$ServiceBroadcastReceiver;,
        Lcom/dts/dtssdk/DtsCore$b;,
        Lcom/dts/dtssdk/DtsCore$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/dts/dtssdk/a;

.field private static c:Lcom/dts/dtssdk/DtsCore;

.field private static e:Lcom/dts/dtssdk/util/b;

.field private static f:Ljava/lang/Object;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/DtsCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/a;

    invoke-direct {v0}, Lcom/dts/dtssdk/a;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/DtsCore;->b:Lcom/dts/dtssdk/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/DtsCore;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dts/dtssdk/a/j;)I
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/util/d;->a:Lcom/dts/dtssdk/util/d;

    invoke-static {v0}, Lcom/dts/dtssdk/a/j;->a(Lcom/dts/dtssdk/util/d;)I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/a/j;->a(Lcom/dts/dtssdk/util/d;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static a()Lcom/dts/dtssdk/DtsCore;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->c:Lcom/dts/dtssdk/DtsCore;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/DtsCore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/DtsCore;->c:Lcom/dts/dtssdk/DtsCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/DtsCore;

    invoke-direct {v0}, Lcom/dts/dtssdk/DtsCore;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/DtsCore;->c:Lcom/dts/dtssdk/DtsCore;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/DtsCore;->c:Lcom/dts/dtssdk/DtsCore;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(I)Lcom/dts/dtssdk/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$6;

    invoke-direct {v2, v0, p0}, Lcom/dts/dtssdk/j$6;-><init>(Lcom/dts/dtssdk/j;I)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/dts/dtssdk/k;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a(II)Lcom/dts/dtssdk/f/a;
    .locals 4

    const/16 v0, -0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/dts/dtssdk/k;->c(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting GEQ gain for band: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | eagle(gain): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    new-instance v2, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$4;

    invoke-direct {v3, v1, p0, v0}, Lcom/dts/dtssdk/j$4;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v2, v1, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    iget-object v1, v0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    invoke-virtual {v1}, Lcom/dts/dtssdk/b/c$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/dts/dtssdk/b/c;->b:Lcom/dts/dtssdk/b/c$a;

    invoke-virtual {v0, p0, p1}, Lcom/dts/dtssdk/b/c$a;->a(II)V

    :cond_2
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-static {p1}, Lcom/dts/dtssdk/k;->a(Z)I

    move-result v1

    new-instance v2, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$8;

    invoke-direct {v3, v0, v1}, Lcom/dts/dtssdk/j$8;-><init>(Lcom/dts/dtssdk/j;I)V

    invoke-direct {v2, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->a:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    :goto_0
    invoke-static {p0, p1}, Lcom/dts/dtssdk/h;->b(Landroid/content/Context;Z)V

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/dts/dtssdk/b/c$c;->b:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v1

    new-instance v2, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$31;

    invoke-direct {v3, v0, v1}, Lcom/dts/dtssdk/j$31;-><init>(Lcom/dts/dtssdk/j;I)V

    invoke-direct {v2, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "00000000-0000-0000-0000-000000000000"

    iget-object v2, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0, v4}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;ZLcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 5

    invoke-static {}, Lcom/dts/dtssdk/k;->a()Z

    :try_start_0
    invoke-static {p3}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v1

    iget-object v2, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/dts/dtssdk/k;->a(Z)I

    move-result v3

    iget v4, p1, Lcom/dts/dtssdk/a/a;->h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dts/dtssdk/j;->a(ILjava/lang/String;II)Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/dts/dtssdk/b/c$d;->a:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/b/c$d;->b:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/b/c$d;->c:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/b/c$d;->d:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dts/dtssdk/util/a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->e:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v2, v1}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accessory successfully selected. UUID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/dts/dtssdk/k;->a(Z)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/dts/dtssdk/j;->a(ILjava/lang/String;II)Lcom/dts/dtssdk/o;
    :try_end_1
    .catch Lcom/dts/dtssdk/d/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->x:Lcom/dts/dtssdk/f/a$a;

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/m;

    sget-object v3, Lcom/dts/dtssdk/m$a;->a:Lcom/dts/dtssdk/m$a;

    invoke-direct {v2, v3}, Lcom/dts/dtssdk/m;-><init>(Lcom/dts/dtssdk/m$a;)V

    invoke-static {}, Lcom/dts/dtssdk/k;->a()Z

    const-string v3, "2.0.3.56"

    invoke-virtual {v2, v0, v3}, Lcom/dts/dtssdk/m;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-virtual {v2, p0}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/util/a;)V

    invoke-virtual {v2, p1}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/a/a;)V

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/m;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/a/n;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v2

    new-instance v3, Lcom/dts/dtssdk/j$a;

    new-instance v4, Lcom/dts/dtssdk/j$29;

    invoke-direct {v4, v1, v2, v0}, Lcom/dts/dtssdk/j$29;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v3, v1, v4}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v3}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    if-ltz v1, :cond_0

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget v0, v0, Lcom/dts/dtssdk/o;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/a/n;->a:Lcom/dts/dtssdk/a/n;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    sget-object v2, Lcom/dts/dtssdk/a/n;->a:Lcom/dts/dtssdk/a/n;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/a/n;->c:Lcom/dts/dtssdk/a/n;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/dts/dtssdk/a/n;->b:Lcom/dts/dtssdk/a/n;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/dts/dtssdk/a/n;->d:Lcom/dts/dtssdk/a/n;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/a/n;->a:Lcom/dts/dtssdk/a/n;

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 7

    if-gez p2, :cond_0

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setTrebleLevel error.Treble level must be greater than or equal to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Treble level must be greater than or equal to 0"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setTrebleLevel error. Treble level must be less than or equal to 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Treble level must be less than or equal to 100"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$20;

    invoke-direct {v6, v1, p2, v4, v0}, Lcom/dts/dtssdk/j$20;-><init>(Lcom/dts/dtssdk/j;III)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] setTrebleLevel() to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTrebleLevel from Service returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/f/a;
    .locals 6

    sget-object v0, Lcom/dts/dtssdk/a/n;->a:Lcom/dts/dtssdk/a/n;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Stereo mode cannot be unknown."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v1

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v2

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v3

    sget-object v0, Lcom/dts/dtssdk/n$1;->a:[I

    invoke-virtual {p2}, Lcom/dts/dtssdk/a/n;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    new-instance v4, Lcom/dts/dtssdk/j$a;

    new-instance v5, Lcom/dts/dtssdk/j$28;

    invoke-direct {v5, v2, v0, v3, v1}, Lcom/dts/dtssdk/j$28;-><init>(Lcom/dts/dtssdk/j;III)V

    invoke-direct {v4, v2, v5}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v4}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    if-nez p2, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logStereoPreferenceSelected(): stereo preference parameter cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/dts/dtssdk/b/c$d;->e:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dts/dtssdk/a/n;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->f:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v2, v1}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Lcom/dts/dtssdk/f/a;
    .locals 6

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v2

    invoke-static {p2}, Lcom/dts/dtssdk/k;->a(Z)I

    move-result v3

    new-instance v4, Lcom/dts/dtssdk/j$a;

    new-instance v5, Lcom/dts/dtssdk/j$22;

    invoke-direct {v5, v1, v3, v2, v0}, Lcom/dts/dtssdk/j$22;-><init>(Lcom/dts/dtssdk/j;III)V

    invoke-direct {v4, v1, v5}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v4}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/b/c$c;->n:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v2, v1}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    :goto_0
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/dts/dtssdk/b/c$c;->o:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v2, v1}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static a(Z)Lcom/dts/dtssdk/f/a;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-static {p0}, Lcom/dts/dtssdk/k;->a(Z)I

    move-result v1

    new-instance v2, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$2;

    invoke-direct {v3, v0, v1}, Lcom/dts/dtssdk/j$2;-><init>(Lcom/dts/dtssdk/j;I)V

    invoke-direct {v2, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/dts/dtssdk/b/c$c;->c:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    :goto_0
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/dts/dtssdk/b/c$c;->d:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static a([F)Lcom/dts/dtssdk/f/a;
    .locals 5

    const/4 v3, 0x4

    array-length v0, p0

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$9;

    invoke-direct {v2, v0, p0}, Lcom/dts/dtssdk/j$9;-><init>(Lcom/dts/dtssdk/j;[F)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v1

    if-nez p0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logListeningTest(): listening test values cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_1
    array-length v0, p0

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logListeningTest(): listening test cannot have more than 4 values. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dts/dtssdk/b/c$d;->h:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v4}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v4, p0, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/b/c$c;->i:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a([I)Lcom/dts/dtssdk/f/a;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "null"

    :goto_0
    sget-object v1, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received invalid argument for setAllGEQGains(). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "GEQ gain list\'s size must be 10"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_5

    aget v2, p0, v0

    const/16 v3, -0xc

    if-lt v2, v3, :cond_3

    aget v2, p0, v0

    const/16 v3, 0xc

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_4
    aget v2, p0, v0

    invoke-static {v2}, Lcom/dts/dtssdk/k;->c(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v2, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$5;

    invoke-direct {v3, v0, v1}, Lcom/dts/dtssdk/j$5;-><init>(Lcom/dts/dtssdk/j;[I)V

    invoke-direct {v2, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/b/c;->a([I)V

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Setting successfully set."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/util/f;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAudioRouteChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "audioRoute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "audioRoute"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio route change received. Route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logAudioRouteChange(): audio route parameter cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/dts/dtssdk/b/c$d;->d:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v3}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dts/dtssdk/util/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$c;->j:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/util/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selected headphone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    const/4 v0, 0x0

    new-instance v1, Lcom/dts/dtssdk/DtsCore$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/dts/dtssdk/DtsCore$6;-><init>(Lcom/dts/dtssdk/DtsCore;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/util/a;)V

    invoke-static {p1, v0, p3, p2, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/DtsCore;Lcom/dts/dtssdk/a/j;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/a/j$1;->a:[I

    invoke-virtual {v0}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/l;

    iget-object v4, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v1

    new-instance v3, Lcom/dts/dtssdk/DtsCore$2;

    invoke-direct {v3, p0, v0, p3}, Lcom/dts/dtssdk/DtsCore$2;-><init>(Lcom/dts/dtssdk/DtsCore;Lcom/dts/dtssdk/a/l;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v6, Lcom/dts/dtssdk/j$a;

    new-instance v7, Lcom/dts/dtssdk/j$26;

    invoke-direct {v7, v0, v1}, Lcom/dts/dtssdk/j$26;-><init>(Lcom/dts/dtssdk/j;I)V

    invoke-direct {v6, v0, v7}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v6}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Timer] setBassBoostEnabled() to Service and back took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setContentMode from System returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    invoke-interface {v3, v1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_2
    return-void

    :pswitch_0
    const-string v0, "Attached0"

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    const-string v0, "Attached1"

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    const-string v0, "Attached2"

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    const-string v0, "Attached3"

    move-object v1, v0

    goto :goto_0

    :pswitch_4
    const-string v0, "Attached4"

    move-object v1, v0

    goto :goto_0

    :pswitch_5
    const-string v0, "Attached5"

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "Attached6"

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Attached7"

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "Attached8"

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {v3, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    move-object v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Ljava/lang/Boolean;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;ZLcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/m;

    sget-object v3, Lcom/dts/dtssdk/m$a;->b:Lcom/dts/dtssdk/m$a;

    invoke-direct {v2, v3}, Lcom/dts/dtssdk/m;-><init>(Lcom/dts/dtssdk/m$a;)V

    invoke-static {}, Lcom/dts/dtssdk/k;->a()Z

    const-string v3, "2.0.3.56"

    invoke-virtual {v2, v1, v3}, Lcom/dts/dtssdk/m;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-virtual {v2, p0}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/util/a;)V

    invoke-virtual {v2, p1}, Lcom/dts/dtssdk/m;->a(Lcom/dts/dtssdk/a/a;)V

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/m;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/h;)V
    .locals 0

    invoke-static {p0}, Lcom/dts/dtssdk/util/g;->a(Lcom/dts/dtssdk/util/h;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/util/a;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Comparing In-box headphone failed, due to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Service has already applied in-box tuning on headphone "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " route..Skipping in-box headphone tuning"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$21;

    invoke-direct {v6, v1, v4, v0}, Lcom/dts/dtssdk/j$21;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] getTrebleLevel() to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTrebleLevel from Service - result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 7

    if-gez p2, :cond_0

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setBassLevel error. Bass level must be greater than or equal to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Bass level must be greater than or equal to 0"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setBassLevel error. Bass level must be less than or equal to 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Bass level must be less than or equal to 100"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$24;

    invoke-direct {v6, v1, p2, v4, v0}, Lcom/dts/dtssdk/j$24;-><init>(Lcom/dts/dtssdk/j;III)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] setBassLevel() to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBassLevel from Service returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/k;->a()Z

    const-string v0, "2.0.3.56"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/dts/dtssdk/util/f;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/dts/dtssdk/util/c;->a(Landroid/content/Context;)Lcom/dts/dtssdk/util/c;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/DtsCore;->e:Lcom/dts/dtssdk/util/b;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/util/c;->a(Lcom/dts/dtssdk/util/b;)V

    return-void
.end method

.method static c()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/l;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$1;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$1;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    if-lez v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/dts/dtssdk/l;

    invoke-direct {v2, v1}, Lcom/dts/dtssdk/l;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "Bad versions String received from service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0
.end method

.method static c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v2

    new-instance v3, Lcom/dts/dtssdk/j$a;

    new-instance v4, Lcom/dts/dtssdk/j$23;

    invoke-direct {v4, v1, v2, v0}, Lcom/dts/dtssdk/j$23;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v3, v1, v4}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v3}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget v0, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-static {v0}, Lcom/dts/dtssdk/k;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 7

    if-gez p2, :cond_0

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setDialogLevel error.  Dialog level must be greater than or equal to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Dialog level must be greater than or equal to 0"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "setDialogLevel error. Dialog level must be less than or equal to 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Dialog level must be less than or equal to 100"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$17;

    invoke-direct {v6, v1, p2, v4, v0}, Lcom/dts/dtssdk/j$17;-><init>(Lcom/dts/dtssdk/j;III)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] setDialogLevel to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDialogLevel from Service returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0
.end method

.method static d()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/j;->b()Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    iget v2, v1, Lcom/dts/dtssdk/o;->a:I

    invoke-static {v2}, Lcom/dts/dtssdk/k;->a(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static d(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$25;

    invoke-direct {v6, v1, v4, v0}, Lcom/dts/dtssdk/j$25;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] getBassLevel() to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBassLevel from Service - result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static e()Lcom/dts/dtssdk/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$27;

    invoke-direct {v3, v0}, Lcom/dts/dtssdk/j$27;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    :goto_1
    const-string v3, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a19"

    goto :goto_1

    :pswitch_2
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a20"

    goto :goto_1

    :pswitch_3
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a16"

    goto :goto_1

    :pswitch_4
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a28"

    goto :goto_1

    :pswitch_5
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a29"

    goto :goto_1

    :pswitch_6
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a30"

    goto :goto_1

    :pswitch_7
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a44"

    goto :goto_1

    :pswitch_8
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a45"

    goto :goto_1

    :pswitch_9
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a46"

    goto :goto_1

    :pswitch_a
    const-string v1, "00000000-0000-0000-0000-000000000000"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static e(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    :try_start_0
    invoke-static {p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/j;)I

    move-result v0

    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v1

    invoke-static {p0}, Lcom/dts/dtssdk/n;->a(Lcom/dts/dtssdk/util/a;)I

    move-result v4

    new-instance v5, Lcom/dts/dtssdk/j$a;

    new-instance v6, Lcom/dts/dtssdk/j$18;

    invoke-direct {v6, v1, v4, v0}, Lcom/dts/dtssdk/j$18;-><init>(Lcom/dts/dtssdk/j;II)V

    invoke-direct {v5, v1, v6}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v5}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "[Timer] getDialogLevel() to Service and back took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDialogLevel from System - result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static f()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$3;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$3;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget v0, v0, Lcom/dts/dtssdk/o;->a:I

    invoke-static {v0}, Lcom/dts/dtssdk/k;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static g()Lcom/dts/dtssdk/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$7;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$7;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "Received a null integer list for getAllGEQGains(). Returning error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    if-ge v2, v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/dts/dtssdk/k;->b(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static h()Lcom/dts/dtssdk/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$10;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$10;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, [F

    array-length v1, v1

    if-ge v2, v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, [F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0, v3}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static i()Lcom/dts/dtssdk/f/a;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$11;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$11;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static j()Lcom/dts/dtssdk/f/a;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$12;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$12;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;
    .locals 5

    const/4 v1, 0x1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v2, "Initializing DTS... Version: 2.0.3.56"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore;->d:Landroid/content/Context;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Getting DTS enabled (for initialize service check) failed with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v3, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "Aborting initialize due to unresponsive service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "DTS service is unresponsive"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v3, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    const-string v1, "Aborting initialize due to API timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "DTS system is unresponsive"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    iget-object v2, v0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    const-string v2, "true"

    iget-object v0, v0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    const-string v3, "ui_hide_enable_button"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-static {p1, v1}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Service version: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/l;

    iget-object v0, v0, Lcom/dts/dtssdk/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Client version: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/l;

    iget-object v0, v0, Lcom/dts/dtssdk/l;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Eagle version: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/l;

    iget-object v0, v0, Lcom/dts/dtssdk/l;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/k;->a()Z

    const-string v1, "2.0.3.56"

    invoke-virtual {v0, p1, v1}, Lcom/dts/dtssdk/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->q:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    new-instance v1, Lcom/dts/dtssdk/DtsCore$3;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtssdk/DtsCore$3;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    new-instance v1, Lcom/dts/dtssdk/DtsCore$4;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtssdk/DtsCore$4;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    :cond_4
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    new-instance v1, Lcom/dts/dtssdk/DtsCore$5;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtssdk/DtsCore$5;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    :cond_5
    sget-object v0, Lcom/dts/dtssdk/DtsCore;->e:Lcom/dts/dtssdk/util/b;

    if-nez v0, :cond_7

    sget-object v1, Lcom/dts/dtssdk/DtsCore;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/DtsCore;->e:Lcom/dts/dtssdk/util/b;

    if-nez v0, :cond_6

    new-instance v0, Lcom/dts/dtssdk/DtsCore$7;

    invoke-direct {v0, p0, p1}, Lcom/dts/dtssdk/DtsCore$7;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V

    sput-object v0, Lcom/dts/dtssdk/DtsCore;->e:Lcom/dts/dtssdk/util/b;

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-static {p1}, Lcom/dts/dtssdk/util/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/dts/dtssdk/util/c;->a(Landroid/content/Context;)Lcom/dts/dtssdk/util/c;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/DtsCore;->e:Lcom/dts/dtssdk/util/b;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/util/c;->a(Lcom/dts/dtssdk/util/b;)V

    :cond_8
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/dts/dtssdk/DtsCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting system versions failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 4

    new-instance v0, Lcom/dts/dtssdk/DtsCore$b;

    invoke-direct {v0, p0, p1, p3}, Lcom/dts/dtssdk/DtsCore$b;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/dts/dtssdk/a/j;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/DtsCore$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method final k()Lcom/dts/dtssdk/util/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dts/dtssdk/util/c;->a(Landroid/content/Context;)Lcom/dts/dtssdk/util/c;

    invoke-static {}, Lcom/dts/dtssdk/util/c;->a()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    return-object v0
.end method
