.class public interface abstract Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
.super Ljava/lang/Object;
.source "IWWANDBReceiverResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBSListAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBSListAvailableExt(Ljava/util/List;ILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSInfo;",
            ">;I",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusUpdate(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
