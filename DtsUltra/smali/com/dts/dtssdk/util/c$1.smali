.class final Lcom/dts/dtssdk/util/c$1;
.super Landroid/media/AudioDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/util/c;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/util/c$1;->a:Lcom/dts/dtssdk/util/c;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    invoke-static {}, Lcom/dts/dtssdk/util/c;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtssdk/util/c$1;->a:Lcom/dts/dtssdk/util/c;

    invoke-static {v0}, Lcom/dts/dtssdk/util/c;->a(Lcom/dts/dtssdk/util/c;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    invoke-static {}, Lcom/dts/dtssdk/util/c;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtssdk/util/c$1;->a:Lcom/dts/dtssdk/util/c;

    invoke-static {v0}, Lcom/dts/dtssdk/util/c;->a(Lcom/dts/dtssdk/util/c;)V

    return-void
.end method
