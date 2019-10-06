.class public interface abstract Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
.super Ljava/lang/Object;
.source "IWiFiDBReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract pushLookupResult(Ljava/util/List;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pushWiFiDB(Ljava/util/List;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerResponseListener(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerResponseListenerExt(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeResponseListener(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAPList(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestScanList()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
