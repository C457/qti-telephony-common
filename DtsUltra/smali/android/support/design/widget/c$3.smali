.class final Landroid/support/design/widget/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/c$3;->a:Landroid/support/design/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/design/widget/c$3;->a:Landroid/support/design/widget/c;

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getRotation()F

    move-result v1

    iget v2, v0, Landroid/support/design/widget/c;->i:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    iput v1, v0, Landroid/support/design/widget/c;->i:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/design/widget/c;->i:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getLayerType()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1, v4, v3}, Landroid/support/design/widget/p;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/support/design/widget/c;->h:Landroid/support/design/widget/h;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/c;->h:Landroid/support/design/widget/h;

    iget v2, v0, Landroid/support/design/widget/c;->i:F

    neg-float v2, v2

    iget v3, v1, Landroid/support/design/widget/h;->k:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    iput v2, v1, Landroid/support/design/widget/h;->k:F

    invoke-virtual {v1}, Landroid/support/design/widget/h;->invalidateSelf()V

    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/c;->l:Landroid/support/design/widget/a;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/design/widget/c;->l:Landroid/support/design/widget/a;

    iget v0, v0, Landroid/support/design/widget/c;->i:F

    neg-float v0, v0

    iget v2, v1, Landroid/support/design/widget/a;->i:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    iput v0, v1, Landroid/support/design/widget/a;->i:F

    invoke-virtual {v1}, Landroid/support/design/widget/a;->invalidateSelf()V

    :cond_2
    return v4

    :cond_3
    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/p;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
