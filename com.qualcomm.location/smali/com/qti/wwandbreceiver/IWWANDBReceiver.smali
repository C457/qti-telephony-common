.class public interface abstract Lcom/qti/wwandbreceiver/IWWANDBReceiver;
.super Ljava/lang/Object;
.source "IWWANDBReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract pushWWANDB(Ljava/util/List;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSSpecialInfo;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerResponseListener(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerResponseListenerExt(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeResponseListener(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestBSList(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
