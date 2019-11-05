.class public Lcom/dts/dtssdk/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/dts/dtssdk/f;

.field private static j:Z


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/util/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/dts/dtssdk/f;->g:I

    iput v0, p0, Lcom/dts/dtssdk/f;->h:I

    iput v0, p0, Lcom/dts/dtssdk/f;->i:I

    sget-boolean v0, Lcom/dts/dtssdk/f;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->e()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dts/dtssdk/f;->j:Z

    :cond_0
    return-void
.end method

.method public static a()Lcom/dts/dtssdk/f;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/f;->c:Lcom/dts/dtssdk/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/f;->c:Lcom/dts/dtssdk/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f;

    invoke-direct {v0}, Lcom/dts/dtssdk/f;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/f;->c:Lcom/dts/dtssdk/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/f;->c:Lcom/dts/dtssdk/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/dts/dtssdk/util/d;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v2

    sget-object v3, Lcom/dts/dtssdk/e;->s:Lcom/dts/dtssdk/e;

    invoke-virtual {v2, v3}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v2

    sget-object v3, Lcom/dts/dtssdk/e;->r:Lcom/dts/dtssdk/e;

    invoke-virtual {v2, v3}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/dts/dtssdk/util/d;->b:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->c:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->e:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->f:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v2

    sget-object v3, Lcom/dts/dtssdk/e;->q:Lcom/dts/dtssdk/e;

    invoke-virtual {v2, v3}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/dts/dtssdk/util/d;->c:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->e:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/dts/dtssdk/util/d;->f:Lcom/dts/dtssdk/util/d;

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$15;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$15;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting DSEC tokens failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dts/dtssdk/f;->f()V

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    const-string v1, "Initialization failed. Attempting retry in the future"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Getting DSEC tokens successful. Tokens: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    sget-object v3, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    const-string v4, "Found a null or empty DSEC token. Skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/dts/dtssdk/d/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    const-string v1, "Getting DSEC tokens timed out. Could not construct DSEC list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/dts/dtssdk/f;->g()V

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->h()V

    goto :goto_1
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v2, ""

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v3, Lcom/dts/dtssdk/j$16;

    invoke-direct {v3, v0}, Lcom/dts/dtssdk/j$16;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v3}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Getting customer config failed with error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Getting customer config successful. Tokens: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/dts/dtssdk/d/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    const-string v1, "Getting customer config timed out. Could not construct DSEC list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing customer config failed. Config string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disable_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Feature "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is licensed, but disabled in config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/dts/dtssdk/e;->m:Lcom/dts/dtssdk/e;

    iget-object v1, v1, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtssdk/e;->n:Lcom/dts/dtssdk/e;

    iget-object v1, v1, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtssdk/e;->o:Lcom/dts/dtssdk/e;

    iget-object v1, v1, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/dts/dtssdk/e;->a(Ljava/lang/String;)Lcom/dts/dtssdk/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disable_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/dts/dtssdk/e;->m:Lcom/dts/dtssdk/e;

    iget-object v2, v2, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/dts/dtssdk/e;->m:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disable_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/dts/dtssdk/e;->n:Lcom/dts/dtssdk/e;

    iget-object v2, v2, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/dts/dtssdk/e;->n:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disable_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/dts/dtssdk/e;->o:Lcom/dts/dtssdk/e;

    iget-object v2, v2, Lcom/dts/dtssdk/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/dts/dtssdk/e;->o:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dts/dtssdk/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/f;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "token= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "route_"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disable_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " route is licensed, but disabled in config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "route_line_out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    :goto_1
    sget-object v3, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    if-ne v1, v3, :cond_6

    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found an unknown audio route: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Could not add"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v1, "route_int_speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    goto :goto_1

    :cond_3
    const-string v1, "route_bluetooth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    goto :goto_1

    :cond_4
    const-string v1, "route_usb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/dts/dtssdk/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->e()V

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/f;->e:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final a(Lcom/dts/dtssdk/util/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->e()V

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/f;->f:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->e()V

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dts/dtssdk/f;->e()V

    iget-object v0, p0, Lcom/dts/dtssdk/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/f;->a:Ljava/util/HashMap;

    goto :goto_0
.end method

.method final d()I
    .locals 5

    const/16 v2, 0x2710

    const/16 v4, 0xbb8

    iget v0, p0, Lcom/dts/dtssdk/f;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dts/dtssdk/f;->i:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtssdk/f;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "setting_system_api_timeout"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iput v4, p0, Lcom/dts/dtssdk/f;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No customized system api timeout found. Using default value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dts/dtssdk/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v0, p0, Lcom/dts/dtssdk/f;->i:I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/dts/dtssdk/f;->i:I

    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timeout is < 0. Setting it to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/dts/dtssdk/f;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value found for system api timeout: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Value must be an integer. Setting it to 3000ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/dts/dtssdk/f;->i:I

    goto :goto_1

    :cond_2
    if-le v1, v2, :cond_3

    :try_start_1
    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    const-string v2, "Timeout is >10000. Setting it to 10000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/dts/dtssdk/f;->i:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/dts/dtssdk/f;->i:I

    sget-object v1, Lcom/dts/dtssdk/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting customized system api timeout to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/dts/dtssdk/f;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
