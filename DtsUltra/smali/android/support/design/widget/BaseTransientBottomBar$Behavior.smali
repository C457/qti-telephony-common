.class public Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/support/design/widget/BaseTransientBottomBar$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->g:Landroid/support/design/widget/BaseTransientBottomBar$b;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->g:Landroid/support/design/widget/BaseTransientBottomBar$b;

    iget-object v1, p1, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    iput-object v1, v0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/j$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/BaseTransientBottomBar$e;

    return v0
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->g:Landroid/support/design/widget/BaseTransientBottomBar$b;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/j$a;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$a;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar$b;->a:Landroid/support/design/widget/j$a;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/j;->b(Landroid/support/design/widget/j$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
