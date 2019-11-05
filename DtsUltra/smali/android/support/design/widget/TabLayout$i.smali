.class public final Landroid/support/design/widget/TabLayout$i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/h/t;


# direct methods
.method public constructor <init>(Landroid/support/v4/h/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$i;->a:Landroid/support/v4/h/t;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$i;->a:Landroid/support/v4/h/t;

    iget v1, p1, Landroid/support/design/widget/TabLayout$f;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/h/t;->setCurrentItem(I)V

    return-void
.end method
