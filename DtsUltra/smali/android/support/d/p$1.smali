.class final Landroid/support/d/p$1;
.super Landroid/support/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/d/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/d/l;

.field final synthetic b:Landroid/support/d/p;


# direct methods
.method constructor <init>(Landroid/support/d/p;Landroid/support/d/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/p$1;->b:Landroid/support/d/p;

    iput-object p2, p0, Landroid/support/d/p$1;->a:Landroid/support/d/l;

    invoke-direct {p0}, Landroid/support/d/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/d/l;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/p$1;->a:Landroid/support/d/l;

    invoke-virtual {v0}, Landroid/support/d/l;->b()V

    invoke-virtual {p1, p0}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method
