.class Lcom/dts/dtssdk/DtsCore$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/DtsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dts/dtssdk/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/DtsCore;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/dts/dtssdk/a/j;

.field private e:Lcom/dts/dtssdk/c/b;

.field private f:I


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$a;->a:Lcom/dts/dtssdk/DtsCore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-class v0, Lcom/dts/dtssdk/DtsCore$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/dts/dtssdk/DtsCore$a;->e:Lcom/dts/dtssdk/c/b;

    iput-object p3, p0, Lcom/dts/dtssdk/DtsCore$a;->d:Lcom/dts/dtssdk/a/j;

    return-void
.end method

.method private varargs a()Lcom/dts/dtssdk/f/a;
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$a;->d:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iget-object v4, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/dts/dtssdk/DtsCore$a$1;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtssdk/DtsCore$a$1;-><init>(Lcom/dts/dtssdk/DtsCore$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    invoke-direct {p0, v6}, Lcom/dts/dtssdk/DtsCore$a;->a(Ljava/util/concurrent/CountDownLatch;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$a;->d:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iget-object v4, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/dts/dtssdk/DtsCore$a$2;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtssdk/DtsCore$a$2;-><init>(Lcom/dts/dtssdk/DtsCore$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    invoke-direct {p0, v6}, Lcom/dts/dtssdk/DtsCore$a;->a(Ljava/util/concurrent/CountDownLatch;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$a;->d:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    iget-object v4, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/dts/dtssdk/DtsCore$a$3;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtssdk/DtsCore$a$3;-><init>(Lcom/dts/dtssdk/DtsCore$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    invoke-direct {p0, v6}, Lcom/dts/dtssdk/DtsCore$a;->a(Ljava/util/concurrent/CountDownLatch;)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->e()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/dts/dtssdk/DtsCore$a;->d:Lcom/dts/dtssdk/a/j;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/dts/dtssdk/DtsCore$a$4;

    invoke-direct {v4, p0, v1}, Lcom/dts/dtssdk/DtsCore$a$4;-><init>(Lcom/dts/dtssdk/DtsCore$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, v3, v0, v4}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    invoke-direct {p0, v1}, Lcom/dts/dtssdk/DtsCore$a;->a(Ljava/util/concurrent/CountDownLatch;)V

    :cond_3
    :goto_3
    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    if-nez v0, :cond_8

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_4
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting lineout accessory failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting bluetooth accessory failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting usb accessory failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting content mode accessory failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Some tunings failed to be reapplied. Failed count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/dts/dtssdk/DtsCore$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    const-string v1, "Did not receive response from set tuning call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->b:Ljava/lang/String;

    const-string v1, "Interrupted while calling set tuning API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtssdk/DtsCore$a;)I
    .locals 2

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dts/dtssdk/DtsCore$a;->f:I

    return v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtssdk/DtsCore$a;->a()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a;->e:Lcom/dts/dtssdk/c/b;

    invoke-interface {v0, p1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    return-void
.end method
