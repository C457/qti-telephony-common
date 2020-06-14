.class final Lcom/dts/dtsxultra/b/m$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field final synthetic a:Lcom/dts/dtsxultra/b/m;


# direct methods
.method private constructor <init>(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dts/dtsxultra/b/m;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/m$b;-><init>(Lcom/dts/dtsxultra/b/m;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->p(Lcom/dts/dtsxultra/b/m;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->b(Lcom/dts/dtsxultra/b/m;Z)Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v2, v2, Lcom/dts/dtsxultra/b/m;->ad:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->g(Lcom/dts/dtsxultra/b/m;)V

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0, v3}, Lcom/dts/dtsxultra/b/m;->c(Z)V

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->q(Lcom/dts/dtsxultra/b/m;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    const v2, 0x7f0e00dd

    invoke-virtual {v1, v2}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$b;->a:Lcom/dts/dtsxultra/b/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->b(Lcom/dts/dtsxultra/b/m;Z)Z

    return-void
.end method
