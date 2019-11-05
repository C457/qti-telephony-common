.class final Lcom/dts/dtsxultra/b/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/m;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->e(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/b/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->f(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/m;->g(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/a/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/dts/dtsxultra/b/m$a;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->j(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->j(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->e(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/b/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->f(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/m;->g(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/a/j;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dts/dtsxultra/b/m$a;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->j(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$3;->a:Lcom/dts/dtsxultra/b/m;

    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
