.class public interface abstract Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
.super Ljava/lang/Object;
.source "IWiFiDBProviderResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onApObsLocDataAvailable(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbprovider/APObsLocData;",
            ">;I)V"
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
