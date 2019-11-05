.class final Landroid/support/d/c$10;
.super Landroid/support/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/d/c;->a(Landroid/view/ViewGroup;Landroid/support/d/r;Landroid/support/d/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/support/d/c;


# direct methods
.method constructor <init>(Landroid/support/d/c;Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Landroid/support/d/c$10;->c:Landroid/support/d/c;

    iput-object p2, p0, Landroid/support/d/c$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/d/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/d/c$10;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/d/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/d/w;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final a(Landroid/support/d/l;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/d/c$10;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/d/w;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroid/support/d/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/d/w;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
