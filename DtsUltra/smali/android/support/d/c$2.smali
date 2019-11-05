.class final Landroid/support/d/c$2;
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
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:Landroid/support/d/c;


# direct methods
.method constructor <init>(Landroid/support/d/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/c$2;->e:Landroid/support/d/c;

    iput-object p2, p0, Landroid/support/d/c$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/d/c$2;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/d/c$2;->c:Landroid/view/View;

    iput p5, p0, Landroid/support/d/c$2;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/d/c$2;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/d/ac;->a(Landroid/view/View;)Landroid/support/d/ab;

    move-result-object v0

    iget-object v1, p0, Landroid/support/d/c$2;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Landroid/support/d/ab;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/d/c$2;->c:Landroid/view/View;

    iget v1, p0, Landroid/support/d/c$2;->d:F

    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;F)V

    return-void
.end method
