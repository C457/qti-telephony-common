.class final Landroid/support/design/bottomappbar/BottomAppBar$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Landroid/support/v7/widget/ActionMenuView;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->e:Landroid/support/design/bottomappbar/BottomAppBar;

    iput-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->b:Landroid/support/v7/widget/ActionMenuView;

    iput p3, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->c:I

    iput-boolean p4, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->e:Landroid/support/design/bottomappbar/BottomAppBar;

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->c:I

    iget-boolean v3, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->d:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    :cond_0
    return-void
.end method
