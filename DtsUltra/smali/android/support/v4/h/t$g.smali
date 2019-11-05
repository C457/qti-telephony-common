.class final Landroid/support/v4/h/t$g;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/t;


# direct methods
.method constructor <init>(Landroid/support/v4/h/t;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/t$g;->a:Landroid/support/v4/h/t;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/t$g;->a:Landroid/support/v4/h/t;

    invoke-virtual {v0}, Landroid/support/v4/h/t;->a()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/t$g;->a:Landroid/support/v4/h/t;

    invoke-virtual {v0}, Landroid/support/v4/h/t;->a()V

    return-void
.end method
