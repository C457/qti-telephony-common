.class final Landroid/support/d/c$8;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/d/c;->a(Landroid/view/ViewGroup;Landroid/support/d/r;Landroid/support/d/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/d/c$a;

.field final synthetic b:Landroid/support/d/c;

.field private mViewBounds:Landroid/support/d/c$a;


# direct methods
.method constructor <init>(Landroid/support/d/c;Landroid/support/d/c$a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/d/c$8;->b:Landroid/support/d/c;

    iput-object p2, p0, Landroid/support/d/c$8;->a:Landroid/support/d/c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object v0, p0, Landroid/support/d/c$8;->a:Landroid/support/d/c$a;

    iput-object v0, p0, Landroid/support/d/c$8;->mViewBounds:Landroid/support/d/c$a;

    return-void
.end method
