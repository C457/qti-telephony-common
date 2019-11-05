.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 4

    const/4 v3, 0x3

    new-instance v1, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    iget v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v0

    iput v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/a;->c([B)[B

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    invoke-virtual {p0, v0, v3}, Landroidx/versionedparcelable/a;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iget v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v0

    iput v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    iget v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v0

    iput v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    iget v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid icon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iput v3, v1, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v0, 0x0

    iput v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    array-length v0, v0

    iput v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    const-string v3, "UTF-16"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object v0, v1, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/versionedparcelable/a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/a;->b([B)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/a;->b(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
