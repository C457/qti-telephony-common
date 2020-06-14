.class final Lcom/dts/dtsxultra/b/o$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/o;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o;


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/b/o;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/o$a;-><init>(Lcom/dts/dtsxultra/b/o;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->e(Lcom/dts/dtsxultra/b/o;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0, v2}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;Z)Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    const-string v1, "Reset to default settings finished"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/o;->c(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/b/o;->R()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$a;->a:Lcom/dts/dtsxultra/b/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;Z)Z

    return-void
.end method
