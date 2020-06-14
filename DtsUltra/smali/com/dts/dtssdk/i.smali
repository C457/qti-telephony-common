.class public Lcom/dts/dtssdk/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/dts/dtssdk/i;

.field private static final d:Lcom/dts/dtssdk/a;


# instance fields
.field public b:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/i;->a:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/a;

    invoke-direct {v0}, Lcom/dts/dtssdk/a;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/i;->d:Lcom/dts/dtssdk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dts/dtssdk/i;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/i;->c:Lcom/dts/dtssdk/i;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/i;->c:Lcom/dts/dtssdk/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/i;

    invoke-direct {v0}, Lcom/dts/dtssdk/i;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/i;->c:Lcom/dts/dtssdk/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/i;->c:Lcom/dts/dtssdk/i;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/i;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Lcom/dts/dtssdk/f/a;
    .locals 2

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "SDK is running properly"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtssdk/i;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtssdk/i;->b:Z

    return v0
.end method

.method public static c()Lcom/dts/dtssdk/f/a;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/j;->b()Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Lcom/dts/dtssdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Service is running properly"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x5

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Service is not running on the device, or is not reachable"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/dts/dtssdk/f/a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    goto :goto_0
.end method

.method public static d()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/f/b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$13;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$13;-><init>(Lcom/dts/dtssdk/j;)V

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/j$a;-><init>(Lcom/dts/dtssdk/j;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/o;
    :try_end_0
    .catch Lcom/dts/dtssdk/d/a; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    iget-object v0, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto :goto_1

    :cond_0
    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/f/b;->n:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/dts/dtssdk/f/b;->b:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/dts/dtssdk/f/b;->c:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/dts/dtssdk/f/b;->d:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/dts/dtssdk/f/b;->e:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/dts/dtssdk/f/b;->f:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/dts/dtssdk/f/b;->g:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/dts/dtssdk/f/b;->h:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/dts/dtssdk/f/b;->i:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/dts/dtssdk/f/b;->j:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/dts/dtssdk/f/b;->k:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/dts/dtssdk/f/b;->l:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/dts/dtssdk/f/b;->m:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/dts/dtssdk/f/b;->n:Lcom/dts/dtssdk/f/b;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Service is not running on the device, or is not reachable"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->g:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "License file does not exist on device"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x8

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->n:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "This test is not yet supported"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-direct {v1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;)V

    move-object v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_0
        0x6d61 -> :sswitch_1
        0x6d62 -> :sswitch_2
        0x6d63 -> :sswitch_3
        0x6d64 -> :sswitch_4
        0x6d65 -> :sswitch_5
        0x6d66 -> :sswitch_6
        0x6d67 -> :sswitch_7
        0x6d68 -> :sswitch_8
        0x6d69 -> :sswitch_9
        0x6d6a -> :sswitch_a
        0x6d6b -> :sswitch_b
        0x7147 -> :sswitch_c
    .end sparse-switch
.end method

.method public static e()Lcom/dts/dtssdk/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/dts/dtssdk/j;->a()Lcom/dts/dtssdk/j;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/j$a;

    new-instance v2, Lcom/dts/dtssdk/j$14;

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/j$14;-><init>(Lcom/dts/dtssdk/j;)V

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

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Failed to communicate with System"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->g:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "License file does not exist on device"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/dts/dtssdk/o;->a:I

    const/4 v2, -0x8

    if-ne v1, v2, :cond_3

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->n:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "This test is not yet supported"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    new-instance v1, Lcom/dts/dtssdk/f/a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/dts/dtssdk/f/a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/dts/dtssdk/k;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/o;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/i;->a:Ljava/lang/String;

    return-object v0
.end method
