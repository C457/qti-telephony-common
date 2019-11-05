.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroid/support/v4/media/AudioAttributesCompat;
    .locals 2

    new-instance v1, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v1}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    iget-object v0, v1, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/a;->c(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/c;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/AudioAttributesImpl;

    iput-object v0, v1, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    return-object v1
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesCompat;Landroidx/versionedparcelable/a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/a;->a(Landroidx/versionedparcelable/c;)V

    return-void
.end method
