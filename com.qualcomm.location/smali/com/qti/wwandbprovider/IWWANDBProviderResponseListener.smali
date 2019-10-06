.class public interface abstract Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
.super Ljava/lang/Object;
.source "IWWANDBProviderResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBsObsLocDataAvailable(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbprovider/BSObsLocationData;",
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
