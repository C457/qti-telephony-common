.class public final Lcom/dts/dtsxultra/views/a$c;
.super Landroid/support/v7/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/ImageView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/RadioButton;

.field final synthetic w:Lcom/dts/dtsxultra/views/a;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/views/a;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a$c;->w:Lcom/dts/dtsxultra/views/a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const v0, 0x7f080158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$c;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f08015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$c;->s:Landroid/widget/ImageView;

    const v0, 0x7f080163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$c;->t:Landroid/widget/TextView;

    const v0, 0x7f080161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$c;->u:Landroid/widget/TextView;

    const v0, 0x7f08015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    return-void
.end method
