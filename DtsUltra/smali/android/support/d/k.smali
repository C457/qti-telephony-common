.class public final Landroid/support/d/k;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Ljava/lang/Runnable;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/d/k;
    .locals 1

    sget v0, Landroid/support/d/i$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/k;

    return-object v0
.end method
