.class public interface abstract Lcom/qti/wifidbprovider/IWiFiDBProvider;
.super Ljava/lang/Object;
.source "IWiFiDBProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;Landroid/app/PendingIntent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAPObsLocData()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
