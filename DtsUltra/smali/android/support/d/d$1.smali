.class final Landroid/support/d/d$1;
.super Landroid/support/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/d/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/d/d;


# direct methods
.method constructor <init>(Landroid/support/d/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/d$1;->b:Landroid/support/d/d;

    iput-object p2, p0, Landroid/support/d/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/d/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/d/l;)V
    .locals 2

    iget-object v0, p0, Landroid/support/d/d$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/d/d$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/d/ac;->e(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method
