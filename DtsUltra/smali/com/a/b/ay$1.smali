.class final Lcom/a/b/ay$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ay;


# direct methods
.method constructor <init>(Lcom/a/b/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ay$1;->a:Lcom/a/b/ay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/a/b/ay$1;->a:Lcom/a/b/ay;

    invoke-static {v0}, Lcom/a/b/ay;->a(Lcom/a/b/ay;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/ay$1;->a:Lcom/a/b/ay;

    invoke-static {v0}, Lcom/a/b/ay;->a(Lcom/a/b/ay;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {}, Lcom/a/b/ay;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/ay$1;->a:Lcom/a/b/ay;

    invoke-static {v0}, Lcom/a/b/ay;->b(Lcom/a/b/ay;)V

    :cond_0
    return-void
.end method
