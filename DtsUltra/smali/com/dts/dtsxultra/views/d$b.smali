.class public final Lcom/dts/dtsxultra/views/d$b;
.super Landroid/support/v7/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/ImageView;

.field t:Landroid/widget/TextView;

.field final synthetic u:Lcom/dts/dtsxultra/views/d;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/views/d;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const v0, 0x7f08004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d$b;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f08004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v0, 0x7f080050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/d$b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/views/d$b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    return-object v0
.end method
