.class public final Landroid/support/d/b;
.super Landroid/support/d/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/d/p;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/d/p;->o:Z

    new-instance v0, Landroid/support/d/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/d/d;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/d/b;->a(Landroid/support/d/l;)Landroid/support/d/p;

    move-result-object v0

    new-instance v1, Landroid/support/d/c;

    invoke-direct {v1}, Landroid/support/d/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    move-result-object v0

    new-instance v1, Landroid/support/d/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/d/d;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    return-void
.end method
