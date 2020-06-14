.class public Lcom/dts/dtsxultra/b/o;
.super Lcom/dts/dtsxultra/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/b/o$a;
    }
.end annotation


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field X:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/widget/Switch;

.field private aa:Landroid/widget/Switch;

.field private ab:Landroid/widget/Switch;

.field private ae:Z

.field private af:Lcom/dts/dtsxultra/b/o$a;

.field private ag:Lcom/dts/dtssdk/util/a;

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ag:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/o$15;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$15;-><init>(Lcom/dts/dtsxultra/b/o;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->X:Lcom/dts/dtssdk/c/c;

    new-instance v0, Lcom/dts/dtsxultra/b/o$7;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$7;-><init>(Lcom/dts/dtsxultra/b/o;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ai:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/o;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o;->ag:Lcom/dts/dtssdk/util/a;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/o;Lcom/dts/dtsxultra/b/o$a;)Lcom/dts/dtsxultra/b/o$a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o;->af:Lcom/dts/dtsxultra/b/o$a;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/o;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->h()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset listening profile failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Reset listening profile"

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtsxultra/b/o;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f0e00e1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/o;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dts/dtsxultra/b/o;->ae:Z

    return p1
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/o;->ae:Z

    return v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/o;)Lcom/dts/dtsxultra/b/o$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->af:Lcom/dts/dtsxultra/b/o$a;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/o;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->Z:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/o;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ad:Lcom/dts/dtssdk/a/j;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o;->ad:Lcom/dts/dtssdk/a/j;

    invoke-static {}, Lcom/dts/dtsxultra/util/d;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dts/dtsxultra/b/o$2;

    invoke-direct {v4, p0, v0}, Lcom/dts/dtsxultra/b/o$2;-><init>(Lcom/dts/dtsxultra/b/o;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v2, v3, v4}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->i()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset audio level settings failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o;->ad:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/d;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/o$3;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/o$3;-><init>(Lcom/dts/dtsxultra/b/o;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o;->ad:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/d;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/o$4;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/o$4;-><init>(Lcom/dts/dtsxultra/b/o;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o;->ad:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/d;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/o$5;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/o$5;-><init>(Lcom/dts/dtsxultra/b/o;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_3
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->k:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {v7}, Lcom/dts/dtssdk/g;->a(Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabling GEQ failed with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtsxultra/util/d;->e()[I

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a([I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resetting GEQ failed with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v3

    sget-object v4, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    if-ne v3, v4, :cond_6

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    const/16 v12, 0x8

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/o;->i()V

    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0801c0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0801bf

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0801c1

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0801c2

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0801ba

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0801b5

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f0801d3

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f0801ce

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v8, 0x7f0801be

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, p0, Lcom/dts/dtsxultra/b/o;->Z:Landroid/widget/Switch;

    const v8, 0x7f0801b8

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, p0, Lcom/dts/dtsxultra/b/o;->aa:Landroid/widget/Switch;

    const v8, 0x7f0801b6

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v8, 0x7f0801d1

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, p0, Lcom/dts/dtsxultra/b/o;->ab:Landroid/widget/Switch;

    const v8, 0x7f0801cf

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->l()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/dts/dtsxultra/b/o$9;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$9;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v0, Lcom/dts/dtsxultra/b/o$10;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$10;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->k()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/dts/dtsxultra/b/o;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting DTS Versions failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v9

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/dts/dtsxultra/b/o$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$1;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/dts/dtsxultra/b/o$8;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$8;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/l;

    invoke-virtual {v0}, Lcom/dts/dtssdk/l;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/o;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00ed

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/o;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->invalidateOptionsMenu()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ah:Ljava/util/ArrayList;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->X:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/o$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/o$6;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->Z:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->i(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->aa:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->j(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ab:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/o;->ag:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    new-instance v0, Lcom/dts/dtsxultra/b/o$11;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/o$11;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/h;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->Z:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/o$12;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/o$12;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->aa:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/o$13;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/o$13;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ab:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/o$14;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/o$14;-><init>(Lcom/dts/dtsxultra/b/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->v()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->af:Lcom/dts/dtsxultra/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o;->af:Lcom/dts/dtsxultra/b/o$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/o$a;->cancel(Z)Z

    :cond_0
    return-void
.end method
