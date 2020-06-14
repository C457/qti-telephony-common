.class final Lcom/dts/dtsxultra/b/l$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting ContentMode selection failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTS returned error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->i(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/views/c;->a(Lcom/dts/dtssdk/util/d;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->i(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$6;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->i(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
