.class final Lcom/a/b/cd$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cd;


# direct methods
.method constructor <init>(Lcom/a/b/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cd$1;->a:Lcom/a/b/cd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/a/b/cd$1;->a:Lcom/a/b/cd;

    invoke-static {v0}, Lcom/a/b/cd;->a(Lcom/a/b/cd;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cd$1;->a:Lcom/a/b/cd;

    invoke-static {v0}, Lcom/a/b/cd;->a(Lcom/a/b/cd;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
