.class final Lcom/dts/dtsxultra/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dts/dtsxultra/b/h;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/h;I)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    iput p2, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v1, p2}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/h;->b(Lcom/dts/dtsxultra/b/h;)Lcom/dts/dtsxultra/b/h$a;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v2, p2}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;I)I

    move-result v2

    iget-object v3, v0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    aget v3, v3, v1

    if-eq v3, v2, :cond_0

    iget-object v3, v0, Lcom/dts/dtsxultra/b/h$a;->b:[I

    aput v2, v3, v1

    iget-object v2, v0, Lcom/dts/dtsxultra/b/h$a;->c:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/dts/dtsxultra/b/h$a;->c:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/dts/dtsxultra/b/h$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/dts/dtsxultra/b/h$a$1;

    invoke-direct {v3, v0, v1}, Lcom/dts/dtsxultra/b/h$a$1;-><init>(Lcom/dts/dtsxultra/b/h$a;I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/h;->b(Lcom/dts/dtsxultra/b/h;)Lcom/dts/dtsxultra/b/h$a;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/b/h$1;->a:I

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h$1;->b:Lcom/dts/dtsxultra/b/h;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v2, v3}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtsxultra/b/h;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtsxultra/b/h$a;->a(II)V

    return-void
.end method
