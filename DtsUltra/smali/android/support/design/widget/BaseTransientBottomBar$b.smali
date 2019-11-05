.class public final Landroid/support/design/widget/BaseTransientBottomBar$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/support/design/widget/j$a;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/SwipeDismissBehavior",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(F)F

    move-result v0

    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(F)F

    move-result v0

    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    return-void
.end method
