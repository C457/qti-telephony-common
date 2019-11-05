.class Lcom/dts/dtssdk/DtsCore$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/DtsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/dts/dtssdk/a/j;",
        "Ljava/lang/Void;",
        "Lcom/dts/dtssdk/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/DtsCore;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/dts/dtssdk/c/b;

.field private e:I


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$b;->a:Lcom/dts/dtssdk/DtsCore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-class v0, Lcom/dts/dtssdk/DtsCore$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$b;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtssdk/DtsCore$b;->d:Lcom/dts/dtssdk/c/b;

    return-void
.end method

.method private varargs a([Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting task to apply content mode tunings on speaker "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v1

    sget-object v2, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$b;->c:Landroid/content/Context;

    new-instance v2, Lcom/dts/dtssdk/DtsCore$b$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/dts/dtssdk/DtsCore$b$1;-><init>(Lcom/dts/dtssdk/DtsCore$b;[Lcom/dts/dtssdk/a/j;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v2}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V

    const-wide/16 v2, 0x5

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->b:Ljava/lang/String;

    const-string v1, "Did not receive response from set tuning call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$b;->e:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->b:Ljava/lang/String;

    const-string v1, "Interrupted while calling set tuning API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dts/dtssdk/DtsCore$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtssdk/DtsCore$b;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtssdk/DtsCore$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/dts/dtssdk/a/j;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/DtsCore$b;->a([Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->d:Lcom/dts/dtssdk/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b;->d:Lcom/dts/dtssdk/c/b;

    invoke-interface {v0, p1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    return-void
.end method
