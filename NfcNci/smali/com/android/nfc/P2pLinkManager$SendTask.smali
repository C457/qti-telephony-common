.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .line 833
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "response":Landroid/nfc/NdefMessage;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v1

    .line 842
    .local v1, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 843
    return v3

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 847
    .local v2, "request":Landroid/nfc/NdefMessage;
    const/4 v4, 0x2

    if-eqz v2, :cond_6

    .line 848
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v5, :cond_1

    .line 849
    invoke-virtual {v5, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 851
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v5, :cond_2

    .line 855
    invoke-virtual {v5, v2}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    .line 856
    .local v5, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 858
    .end local v5    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_2
    if-nez v0, :cond_4

    .line 859
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v3, :cond_3

    .line 860
    return v4

    .line 862
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 868
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 869
    invoke-virtual {v5, v0}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v5

    .line 868
    invoke-virtual {v1, v4, v5, p1, p2}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 870
    return v3

    .line 873
    :cond_5
    const/4 v3, 0x0

    return v3

    .line 865
    :cond_6
    return v4
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 833
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "args"    # [Ljava/lang/Void;

    .line 890
    const/4 v0, 0x0

    .line 892
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v2, v2, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v2, v2, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 897
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 898
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 899
    .local v6, "userHandle":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 900
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 901
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 902
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 906
    .local v7, "time":J
    const/4 v1, 0x1

    if-eqz v5, :cond_5

    .line 907
    const-string v9, "NfcP2pLinkManager"

    const-string v10, "Trying handover request"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :try_start_1
    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I

    move-result v9

    .line 910
    .local v9, "handoverResult":I
    if-eqz v9, :cond_4

    if-eq v9, v1, :cond_3

    if-eq v9, v4, :cond_2

    const/4 v4, 0x3

    if-eq v9, v4, :cond_1

    goto :goto_0

    .line 922
    :cond_1
    const/4 v0, 0x0

    .line 923
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v4}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V

    goto :goto_0

    .line 918
    :cond_2
    const/4 v0, 0x0

    .line 919
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v4}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    goto :goto_0

    .line 915
    :cond_3
    const/4 v0, 0x0

    .line 916
    goto :goto_0

    .line 912
    :cond_4
    const/4 v0, 0x1

    .line 913
    nop

    .line 928
    .end local v9    # "handoverResult":I
    :goto_0
    goto :goto_1

    .line 926
    :catch_0
    move-exception v4

    .line 927
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 931
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_1
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v4, :cond_8

    .line 932
    const-string v4, "NfcP2pLinkManager"

    const-string v9, "Sending ndef via SNEP"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 935
    .local v4, "snepResult":I
    if-eqz v4, :cond_7

    if-eq v4, v1, :cond_6

    .line 943
    const/4 v0, 0x0

    goto :goto_2

    .line 940
    :cond_6
    const/4 v0, 0x0

    .line 941
    goto :goto_2

    .line 937
    :cond_7
    const/4 v0, 0x1

    .line 938
    nop

    .line 947
    .end local v4    # "snepResult":I
    :goto_2
    goto :goto_3

    .line 945
    :catch_1
    move-exception v1

    .line 946
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 950
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    :goto_3
    if-nez v0, :cond_9

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v1, :cond_9

    .line 951
    invoke-virtual {v1, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v0

    .line 954
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 955
    .end local v7    # "time":J
    .local v9, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendTask result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", time ms="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NfcP2pLinkManager"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz v0, :cond_a

    .line 957
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    .line 960
    :cond_a
    return-object v3

    .line 894
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    .end local v9    # "time":J
    :cond_b
    :goto_4
    :try_start_3
    monitor-exit v1

    return-object v3

    .line 902
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    if-eqz p1, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 879
    const/4 v0, 0x0

    return v0

    .line 881
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
