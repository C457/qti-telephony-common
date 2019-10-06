.class public Lcom/android/nfc/beam/BeamTransferManager;
.super Ljava/lang/Object;
.source "BeamTransferManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferManager$Callback;
    }
.end annotation


# static fields
.field static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field static final ALIVE_CHECK_MS:I = 0x4e20

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final BEAM_NOTIFICATION_CHANNEL:Ljava/lang/String; = "beam_notification_channel"

.field static final DATA_LINK_TYPE_BLUETOOTH:I = 0x1

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BeamTransferManager"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDataLinkType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteActivating:Z

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 159
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 160
    iput-boolean p4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 161
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 163
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 164
    iget-boolean v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 165
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 167
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 170
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 171
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 173
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 178
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 179
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 180
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 181
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 182
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 187
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "beam_notification_channel"

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060001

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 190
    .local v0, "notificationChannel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 191
    return-void
.end method

.method static checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .line 600
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const-string v0, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return v1

    .line 605
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_1
    const-string v0, "BeamTransferManager"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "destFileName"    # Ljava/lang/String;
    .param p2, "overlay"    # Z

    .line 403
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "srcFile":Ljava/io/File;
    const-string v1, ""

    .line 405
    .local v1, "MESSAGE":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "src file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "do not exit!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    sget-object v2, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BeamTransferManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return v3

    .line 409
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy file fail! src file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "is not a file"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    sget-object v2, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BeamTransferManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    return v3

    .line 415
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 417
    if-eqz p2, :cond_5

    .line 418
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 421
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 422
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5

    .line 423
    return v3

    .line 428
    :cond_5
    :goto_0
    const/4 v4, 0x0

    .line 429
    .local v4, "byteread":I
    const/4 v5, 0x0

    .line 430
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 433
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v7

    .line 434
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 435
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 437
    .local v7, "buffer":[B
    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v4, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 438
    invoke-virtual {v6, v7, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 440
    :cond_6
    const/4 v3, 0x1

    .line 447
    nop

    .line 448
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 451
    :catch_0
    move-exception v8

    goto :goto_3

    .line 449
    :goto_2
    nop

    .line 450
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 451
    :goto_3
    nop

    .line 452
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 453
    :goto_4
    nop

    .line 440
    :goto_5
    return v3

    .line 446
    .end local v7    # "buffer":[B
    :catchall_0
    move-exception v3

    .line 447
    if-eqz v6, :cond_7

    .line 448
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 451
    :catch_1
    move-exception v7

    goto :goto_7

    .line 449
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 450
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 451
    :goto_7
    nop

    .line 452
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    nop

    .line 453
    :cond_8
    :goto_8
    throw v3

    .line 443
    :catch_2
    move-exception v7

    .line 444
    .restart local v7    # "e":Ljava/io/IOException;
    nop

    .line 447
    if-eqz v6, :cond_9

    .line 448
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    .line 451
    :catch_3
    move-exception v8

    goto :goto_a

    .line 449
    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    .line 450
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    .line 451
    :goto_a
    nop

    .line 452
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 453
    :cond_a
    :goto_b
    nop

    .line 444
    :goto_c
    return v3

    .line 441
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 442
    .local v7, "e":Ljava/io/FileNotFoundException;
    nop

    .line 447
    if-eqz v6, :cond_b

    .line 448
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_d

    .line 451
    :catch_5
    move-exception v8

    goto :goto_e

    .line 449
    :cond_b
    :goto_d
    if-eqz v5, :cond_c

    .line 450
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_f

    .line 451
    :goto_e
    nop

    .line 452
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 453
    :cond_c
    :goto_f
    nop

    .line 442
    :goto_10
    return v3
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "beamRoot"    # Ljava/lang/String;

    .line 635
    const-string v0, "yyyy-MM-dd"

    .line 636
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 637
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "beam-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "newPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, "newFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 640
    .local v4, "count":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 644
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-object v3
.end method

.method static generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 613
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "dotIndex":I
    const/4 v1, 0x0

    .line 615
    .local v1, "extension":Ljava/lang/String;
    const/4 v2, 0x0

    .line 616
    .local v2, "fileNameWithoutExtension":Ljava/lang/String;
    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 617
    const-string v1, ""

    .line 618
    move-object v2, p1

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 623
    :goto_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v4, "dstFile":Ljava/io/File;
    nop

    .line 625
    .local v3, "count":I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 626
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 630
    :cond_1
    return-object v4
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "cancelIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 310
    return-void
.end method


# virtual methods
.method buildCancelIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.ADDRESS"

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "com.android.nfc.handover.extra.INCOMING"

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 592
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 591
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 596
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .line 573
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 575
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "viewIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 579
    .local v2, "mediaUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 580
    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v4, "com.google.android.nfc.fileprovider"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 582
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const v4, 0x10008003

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    return-object v0
.end method

.method cancel()V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 291
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 293
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 295
    :cond_2
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_1

    .line 299
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 302
    :goto_1
    return-void
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 243
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 244
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 245
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 247
    if-nez p3, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 250
    :cond_2
    if-eqz p3, :cond_3

    .line 251
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_3
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BeamTransferManager"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_4
    const-string v0, "BeamTransferManager"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v0, v2, :cond_8

    .line 262
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_2

    .line 265
    :cond_6
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_2

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 271
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-nez v0, :cond_2

    .line 545
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_0

    .line 548
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_1

    const/4 v2, 0x5

    nop

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 550
    :goto_0
    return v1

    .line 551
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 553
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 556
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 3

    .line 274
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    return v1
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 560
    :try_start_0
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    if-eqz p2, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_1
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 565
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 567
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_2
    monitor-exit p0

    return-void

    .line 559
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/beam/BeamTransferManager;
    throw p1
.end method

.method processFiles()V
    .locals 14

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "extRoot":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lez v1, :cond_c

    .line 464
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "btSrcFile":Ljava/lang/String;
    const-string v4, "/bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 466
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 467
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_0
    sget-object v5, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BeamTransferManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extRoot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v1    # "btSrcFile":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_1
    nop

    .line 476
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "beam"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, "beamPath":Ljava/io/File;
    invoke-static {v1}, Lcom/android/nfc/beam/BeamTransferManager;->checkMediaStorage(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 478
    const-string v3, "BeamTransferManager"

    const-string v4, "Media storage not valid."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 480
    return-void

    .line 483
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "beam"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/nfc/beam/BeamTransferManager;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_3

    .line 486
    const-string v3, "BeamTransferManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create multiple path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 488
    return-void

    .line 492
    :cond_3
    move v2, v3

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 493
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 494
    .local v4, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 496
    .local v6, "mimeType":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 499
    .local v8, "stringSrcFile":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 501
    .local v9, "stringdstFile":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 502
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 501
    invoke-static {v10, v11}, Lcom/android/nfc/beam/BeamTransferManager;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 503
    .local v10, "dstFile":Ljava/io/File;
    const-string v11, "BeamTransferManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Renaming from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 505
    sget-object v11, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "BeamTransferManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to rename from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_4
    invoke-static {v8, v9, v5}, Lcom/android/nfc/beam/BeamTransferManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_5

    .line 507
    const-string v3, "BeamTransferManager"

    const-string v5, "copyFile failed! "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 509
    return-void

    .line 511
    :cond_5
    iget-object v11, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v11, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v11, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "BeamTransferManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did successful copyFile from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 517
    :cond_7
    iget-object v11, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v11, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v11, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "BeamTransferManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did successful rename from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "stringSrcFile":Ljava/lang/String;
    .end local v9    # "stringdstFile":Ljava/lang/String;
    .end local v10    # "dstFile":Ljava/io/File;
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 529
    .end local v2    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 530
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "audio/"

    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    .line 537
    :cond_a
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_3

    .line 532
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 533
    .local v3, "arrayPaths":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 534
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 535
    .end local v3    # "arrayPaths":[Ljava/lang/String;
    nop

    .line 540
    :goto_3
    return-void

    .line 471
    .end local v1    # "beamPath":Ljava/io/File;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_c
    const-string v1, "BeamTransferManager"

    const-string v3, "No uris received."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 473
    return-void
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 231
    :try_start_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 232
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 233
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/beam/BeamTransferManager;
    throw p1
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .line 283
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 284
    return-void
.end method

.method public start()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 209
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-nez v0, :cond_1

    .line 210
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_1

    .line 211
    new-instance v0, Lcom/android/nfc/beam/BluetoothOppHandover;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/beam/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lcom/android/nfc/beam/BluetoothOppHandover;->start()V

    .line 214
    :cond_1
    return-void
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 217
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 225
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 227
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 228
    return-void
.end method

.method updateNotification()V
    .locals 9

    .line 313
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "beam_notification_channel"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    .local v0, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 316
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 317
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 318
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 320
    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "beamString":Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v2    # "beamString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .restart local v2    # "beamString":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v3, v1, :cond_9

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    goto/16 :goto_5

    .line 347
    :cond_1
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v6, 0x5

    const v7, 0x1080089

    const v8, 0x1080082

    if-ne v3, v6, :cond_3

    .line 348
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 349
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_2

    move v7, v8

    goto :goto_1

    .line 350
    :cond_2
    nop

    .line 349
    :goto_1
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 351
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060007

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 352
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 354
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_e

    .line 355
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06000b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 356
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v1

    .line 357
    .local v1, "viewIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v3, v6, v1, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 360
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 361
    .end local v1    # "viewIntent":Landroid/content/Intent;
    .end local v3    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_8

    .line 362
    :cond_3
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 363
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 364
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_4

    move v7, v8

    goto :goto_2

    .line 365
    :cond_4
    nop

    .line 364
    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 366
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060008

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 367
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 368
    :cond_5
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_7

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    goto :goto_3

    .line 375
    :cond_6
    return-void

    .line 369
    :cond_7
    :goto_3
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 370
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_8

    move v7, v8

    goto :goto_4

    .line 371
    :cond_8
    nop

    .line 370
    :goto_4
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 372
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 373
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 327
    :cond_9
    :goto_5
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 328
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v3, :cond_a

    const v3, 0x1080081

    goto :goto_6

    .line 329
    :cond_a
    const v3, 0x1080088

    .line 328
    :goto_6
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 330
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 331
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 332
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-lez v3, :cond_b

    .line 333
    const v3, 0x7f020005

    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f06000a

    .line 334
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 333
    invoke-virtual {v0, v3, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 335
    :cond_b
    const/4 v3, 0x0

    .line 336
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_c

    .line 337
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 338
    .local v6, "progressUnit":F
    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    mul-float/2addr v8, v6

    add-float v3, v7, v8

    .line 340
    .end local v6    # "progressUnit":F
    :cond_c
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    const/16 v7, 0x64

    if-lez v6, :cond_d

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_d

    .line 341
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v7, v1, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 342
    const-string v1, "BeamTransferManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " update progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 344
    :cond_d
    invoke-virtual {v0, v7, v5, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 345
    const-string v1, "BeamTransferManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " update progress 0 mState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v3    # "progress":F
    :goto_7
    nop

    .line 378
    :cond_e
    :goto_8
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 379
    return-void
.end method

.method updateStateAndNotification(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 382
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 385
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 393
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    if-nez v0, :cond_3

    .line 395
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    .line 397
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V

    .line 399
    :cond_3
    return-void
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 199
    return-void
.end method
