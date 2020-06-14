.class public final Lcom/dts/dtsxultra/views/a$a;
.super Landroid/support/v7/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field r:Landroid/widget/TextView;

.field final synthetic s:Lcom/dts/dtsxultra/views/a;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/views/a;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a$a;->s:Lcom/dts/dtsxultra/views/a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const v0, 0x7f080152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a$a;->r:Landroid/widget/TextView;

    return-void
.end method
