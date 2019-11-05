.class final Landroid/support/v4/h/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/h/v;->a(Landroid/support/v4/h/y;)Landroid/support/v4/h/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/y;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/h/v;


# direct methods
.method constructor <init>(Landroid/support/v4/h/v;Landroid/support/v4/h/y;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/v$2;->c:Landroid/support/v4/h/v;

    iput-object p2, p0, Landroid/support/v4/h/v$2;->a:Landroid/support/v4/h/y;

    iput-object p3, p0, Landroid/support/v4/h/v$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/v$2;->a:Landroid/support/v4/h/y;

    invoke-interface {v0}, Landroid/support/v4/h/y;->a()V

    return-void
.end method
