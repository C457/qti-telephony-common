.class public interface abstract Lcom/qti/wwandbprovider/IWWANDBProvider;
.super Ljava/lang/Object;
.source "IWWANDBProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerResponseListener(Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;Landroid/app/PendingIntent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeResponseListener(Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestBSObsLocData()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
