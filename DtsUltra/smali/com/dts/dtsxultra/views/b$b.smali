.class public final Lcom/dts/dtsxultra/views/b$b;
.super Landroid/support/v7/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field r:Landroid/widget/TextView;

.field s:Landroid/widget/RelativeLayout;

.field final synthetic t:Lcom/dts/dtsxultra/views/b;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/views/b;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/views/b$b;->t:Lcom/dts/dtsxultra/views/b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const v0, 0x7f0801fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/b$b;->r:Landroid/widget/TextView;

    const v0, 0x7f08017e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/b$b;->s:Landroid/widget/RelativeLayout;

    return-void
.end method
